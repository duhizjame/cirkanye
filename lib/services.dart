import 'dart:async';
import 'package:flutter/material.dart';

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('AlertDialog Title'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Enter your name:'),
              TextField(
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Enter'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}