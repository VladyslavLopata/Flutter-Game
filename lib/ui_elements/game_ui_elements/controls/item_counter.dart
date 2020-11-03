import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  @override
  ItemCounterState createState() => ItemCounterState();
}

class ItemCounterState extends State<ItemCounter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Items left:"),
        Text("32"),
      ],
    );
  }
}
