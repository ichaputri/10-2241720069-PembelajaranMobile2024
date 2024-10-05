import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          '${item.name} with ${item.price}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
