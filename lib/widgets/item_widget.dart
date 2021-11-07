import 'package:flutter/material.dart';
import 'package:flutter_app_1/models/catalog.dart';

class itemWidget extends StatelessWidget {
  final Item item;

  const itemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("Working");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desp),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
