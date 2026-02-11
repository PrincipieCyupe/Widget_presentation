import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("Snack Bar"),
        ),
        body: SnackBarApp(), // creating a widget that will be called and this will consist all about the snackbar that is essential for this app
      ),
    );
  }
}

class SnackBarApp extends StatefulWidget {
  const SnackBarApp({super.key});

  @override
  State<SnackBarApp> createState() => _SnackBarAppState();
}

class _SnackBarAppState extends State<SnackBarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ElevatedButton(
                onPressed: () {
                  // calling on this method to displays the snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("This is a pop up message from the bottom"), backgroundColor: const Color.fromARGB(255, 102, 83, 22), duration: Duration(days: 1), action: SnackBarAction(label: "close", onPressed: (){}),),
                  );
                },
                child: Text("Show Snack Bar"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // calling on this method to hide current snackbar
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: Text("Hide Snack Bar"),
            ),
          ],
        ),
      ),
    );
  }
}
