import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_app_1/models/catalog.dart';
import 'package:flutter_app_1/widgets/drawer.dart';
import 'package:flutter_app_1/widgets/item_widget.dart';


class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var caltalogJson =
        await rootBundle.loadString("assests/files/catalog.json");
    var decodeData = jsonDecode(caltalogJson);
    var productData = decodeData["products"];
    catalogItem.items = List.from(productData)
        .map<Item>((items) => Item.fromMap(items))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(5, (index) => catalogItem.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("MY APP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (catalogItem.items != null && catalogItem.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = catalogItem.items[index];
                  return Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent
                        ),
                        child: Text(item.name,
                        style: TextStyle(color: Colors.white),)),
                      child: Image.network(item.image),
                      footer: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:Colors.blueAccent[100],
                           ),
                        child: Text(item.price.toString(),
                        style: TextStyle(color: Colors.white),)),
                    ),
                  );
                },
                itemCount: catalogItem.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: mydrawer(),
    );
  }
}
