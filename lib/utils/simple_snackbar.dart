import 'package:flutter/material.dart';

class SimpleSnackbar {
  static Future show(BuildContext context, String message) async {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.down,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),

        // margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height - 150, right: 20, left: 20),
      ),
    );
  }
}
