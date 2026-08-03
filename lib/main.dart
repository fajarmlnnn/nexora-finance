import 'package:flutter/material.dart';

import 'app/theme/app_theme.dart';

void main() {
  runApp(const NexoraApp());
}

class NexoraApp extends StatelessWidget {
  const NexoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nexora Finance',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,

      home: const Scaffold(
        body: Center(
          child: Text('Nexora Finance'),
        ),
      ),
    );
  }
}