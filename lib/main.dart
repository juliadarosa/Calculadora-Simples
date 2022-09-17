import 'package:flutter/material.dart';
import 'package:primeiro_app/app/pages/tela_inicial.dart';

import 'app/pages/home_page.dart';
import 'app/pages/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const menu(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}


