import 'package:flutter/material.dart';
import 'package:flutter_app_1/models/catalog.dart';
import 'package:flutter_app_1/widgets/drawer.dart';
import 'package:flutter_app_1/widgets/item_widget.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(5, (index) => catalogItem.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("MY APP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return itemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: mydrawer(),
    );
  }
}
