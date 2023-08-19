
import 'package:flutter/material.dart';

class TopMenuItems extends StatelessWidget {
  String name;
  VoidCallback action;

  TopMenuItems({super.key, required this.name, required this.action});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
