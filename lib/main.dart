import 'package:flutter/material.dart';
import 'package:app_flutter/login_screen.dart';
import 'package:app_flutter/chess_game.dart';
import 'package:app_flutter/card_game.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CardGame(),
    );
  }
}
