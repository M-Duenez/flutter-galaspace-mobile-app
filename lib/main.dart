import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galaspace',
      home: Scaffold(
        body: Center(
          child: Text('Hola Mundo Miguel Cesar!'),
        ),
      ),
    );
  }
}
