import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(color: Colors.red, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        ),
      ]),
    );
  }
}