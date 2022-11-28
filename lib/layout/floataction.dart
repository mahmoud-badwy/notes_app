import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget Floating({
  required BuildContext context,
}) {
  return FloatingActionButton(
    onPressed: () {
      Navigator.pushNamed(context, 'addnote');
    },
    backgroundColor: Colors.teal,
    child: const Icon(Icons.add),
  );
}
