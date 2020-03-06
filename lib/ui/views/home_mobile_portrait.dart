import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/widgets/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: IconButton(icon: Icon(Icons.menu, size: 30,), 
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }),
          ),
        ]
      ),
    );
  }
}