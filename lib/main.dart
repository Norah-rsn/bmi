import 'package:bmi/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.black87)),
          scaffoldBackgroundColor: const Color(0xFFF2F2F2),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFF9671)),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              elevation: 0, centerTitle: true, color: Color(0xFFF2F2F2))),
      home: const Home(),
    );
  }
}
