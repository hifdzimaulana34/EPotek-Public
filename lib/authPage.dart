import 'package:uas_epotek/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:uas_epotek/registerPage.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? Login(
          onClickSignUp: toggle,
        )
      : SignUp(onClickSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
