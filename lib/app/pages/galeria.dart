import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../componete/menu_componete.dart';

class galeria extends StatefulWidget {
  const galeria({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<galeria> createState() => _GaleriaPageState();
}
class _GaleriaPageState extends State<galeria> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('galeria')
    ),
       body: Center(
        child: Column(
          children: [
            Image.network("https://st2.depositphotos.com/1005147/5192/i/450/depositphotos_51926417-stock-photo-hands-holding-the-sun-at.jpg"),
            Image.network("https://st2.depositphotos.com/1005147/5192/i/450/depositphotos_51926417-stock-photo-hands-holding-the-sun-at.jpg")
          ]
        )



       ),
    );
  }
}