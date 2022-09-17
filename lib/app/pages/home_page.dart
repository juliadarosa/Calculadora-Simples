import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../componete/menu_componete.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  String _text = '';

  final _imputController = TextEditingController();

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void editarText() {
    setState(() {
      _text = _imputController.text;
    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
      drawer: Menu(context),
        body: Center(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                const Text(
                  'You have pushed the button this many times:',
                ),
                TextField(
                  textAlign:  TextAlign.center,
                  controller: _imputController,
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),

                Text(
                  '$_text',
                  style: Theme.of(context).textTheme.headline4,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      onPressed: () {
                        _incrementCounter();

                      },
                      child: Text('mais'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      onPressed: () {
                        _decrementCounter();

                      },
                      child: Text('menos'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      onPressed: () {
                        editarText();

                      },
                      child: Text('adicionar'),
                    ),
                  ],

                )


              ], // This trailing comma makes auto-formatting nicer for build methods.
            )));
  }
}