import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  final Function() onClickSignIn;

  const SignUp({
    Key? key,
    required this.onClickSignIn,
  }) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffB0B8B4),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 75.0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: FlutterLogo(),
                  ),
                ),
              ),
              const Text(
                "Registrasi",
                textScaleFactor: 2.0,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: emailController,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passwordController,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff184A45),
                    minimumSize: Size.fromHeight(50),
                  ),
                  icon: const Icon(Icons.arrow_forward, size: 32),
                  label: const Text(
                    'Daftar',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: signUp,
                ),
              ),
              SizedBox(height: 24),
              RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: 'Sudah Terdaftar? ',
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = widget.onClickSignIn,
                          style: const TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xffFC766A)),
                          text: 'LOGIN!')
                    ]),
              )
            ],
          )),
        ));
  }

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
