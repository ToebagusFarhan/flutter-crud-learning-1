import 'package:crud_learning_1/pages/home.dart';
import 'package:crud_learning_1/pages/produk.dart';
import 'pages/login.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const Home(),
        '/produk': (context) => const Produk(),
      },
      theme: ThemeData(useMaterial3: true),
    );
  }
}
