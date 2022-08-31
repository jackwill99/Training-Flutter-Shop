import 'package:flutter/material.dart';

class SnackBarComponent {
  SnackBarComponent();

  static SnackBar snackBarComponent() {
    return SnackBar(
      backgroundColor: Colors.green,
      elevation: 1,
      duration: const Duration(seconds: 5),
      content: Row(
        children: const [Icon(Icons.check), Text("Show SnackBar")],
      ),
      action: SnackBarAction(label: "Dismiss", onPressed: () {}),
    );
  }
}
