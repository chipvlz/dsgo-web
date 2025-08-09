import 'package:flutter/material.dart';

void main() {
  runApp(const DsgoWebApp());
}

class DsgoWebApp extends StatelessWidget {
  const DsgoWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: Center(
          child: Text('DS Go Web Placeholder'),
        ),
      ),
    );
  }
}
