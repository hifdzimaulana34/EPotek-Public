import 'package:flutter/material.dart';
import 'item.dart';

class gridView extends StatelessWidget {
  const gridView({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                'detailobat', arguments: item
              );
            },
            child: Card(
                child: Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(item.image),
                        ),
                        Text(
                          item.name,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ))),
          );
        },
      ),
    );
  }
}