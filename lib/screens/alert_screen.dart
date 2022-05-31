import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayIosDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text('Alert'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('This is the alert body.'),
                  SizedBox(height: 20),
                  FlutterLogo(size: 50)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => {Navigator.pop(context)},
                    child: const Text('Cancel',
                        style: TextStyle(color: Colors.red))),
                TextButton(
                    onPressed: () => {Navigator.pop(context)},
                    child: const Text('OK'))
              ],
            ));
  }

  void displayAndroidDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              elevation: 5,
              title: const Text('Alert'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(12)),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('This is the alert body.'),
                  SizedBox(height: 20),
                  FlutterLogo(size: 50)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => {Navigator.pop(context)},
                    child: const Text('Cancel'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => Platform.isIOS
                ? displayIosDialog(context)
                : displayAndroidDialog(context),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Show alert',
                style: TextStyle(fontSize: 16),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => {Navigator.pop(context)}),
    );
  }
}
