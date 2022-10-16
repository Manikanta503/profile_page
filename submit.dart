// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AlertBox extends StatefulWidget {
  @override
  State<AlertBox> createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () async {
        final Future<ConfirmAction?> action =
            await _asyncConfirmDialog(context);
        print("Confirm Action $action");
      },
      padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: Colors.green,
      child: const Text(
        "Submit",
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}

enum ConfirmAction { cancel, yes }

Future<Future<ConfirmAction?>> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Do you want to submit?'),
        actions: <Widget>[
          FlatButton(
            child: const Text('cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.cancel);
            },
          ),
          FlatButton(
            child: const Text('yes'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.yes);
            },
          )
        ],
      );
    },
  );
}
