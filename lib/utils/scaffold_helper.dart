import 'package:flutter/material.dart';

mixin ScaffoldHelper<T extends StatefulWidget> on State<T> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }

  void showSnackbar({
    required Widget content,
    Color color = Colors.grey,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: color,
      ),
    );
  }
}
