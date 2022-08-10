import 'package:flutter/material.dart';
import 'package:app_flutter/module/login/login_screen.dart';
import 'package:app_flutter/module/game/chess_game.dart';
import 'package:app_flutter/module/game/card_game.dart';
import 'module/account/account_screen.dart';
import 'module/account/change_password_screen.dart';
import 'module/account/contact_screen.dart';
import 'module/account/menu.dart';
import 'module/sync/sync.dart';
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
      body: LearnSync(),
    );
  }
}
