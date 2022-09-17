import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app/app/pages/lista.dart';

import '../componete/menu_componete.dart';

class menu extends StatefulWidget {
  const menu({Key? key, required this.title}) : super(key: key);

  final String title;


  State<menu> createState() => _MenuState();
}

class _MenuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Bem vindo ao sistema"),



    ),
      drawer:
      Menu(context),

    );



  }
}