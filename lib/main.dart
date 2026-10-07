import 'package:flutter/material.dart';
import 'splash_page.dart';

final temaNotifier = ValueNotifier<ThemeMode>(ThemeMode.light);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: temaNotifier,
      builder: (context, modo, _) {
        return MaterialApp(
          title: 'Caminhadas',
          debugShowCheckedModeBanner: false,
          themeMode: modo,
          theme: ThemeData(
            // Alterado de green para teal (tema claro)
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            // Alterado de green para teal (tema escuro)
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.teal, brightness: Brightness.dark),
            useMaterial3: true,
          ),
          home: const SplashPage(),
        );
      },
    );
  }
}