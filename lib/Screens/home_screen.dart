import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  String name;
  HomePage({Key? key, required this.name}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Text('Bienvenue ${widget.name} ');
  }
}
