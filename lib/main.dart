import 'package:flutter/material.dart';

void main() {
  runApp(const NexoraApp());
}

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nexora Finance',
      home: const Scaffold(
        body: Center(
          child: Text('Nexora Finance'),
        ),
      ),
    );
  }
}