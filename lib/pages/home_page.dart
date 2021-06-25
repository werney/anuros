import 'package:anuros/factory/factory.dart';
import 'package:anuros/model/frog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List<Frog> frogs = Factory.builder();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Opa'),),
      body: Container(
        padding: EdgeInsets.all(10),
        child:
      GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
        itemCount: frogs.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Text(frogs[index].name),
          );
        },
      )),
    );
  }
}