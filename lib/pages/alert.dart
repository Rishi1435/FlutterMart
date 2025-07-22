import 'package:flutter/material.dart';

class AlertExample extends StatelessWidget {
  final String notify;

  const AlertExample({super.key, required this.notify});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDemo(notify: notify),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AlertDemo extends StatelessWidget {
  final String notify;

  const AlertDemo({super.key, required this.notify});

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: Text(notify), // now it works fine
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alert Dialog Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlert(context),
          child: const Text("Show Alert"),
        ),
      ),
    );
  }
}
