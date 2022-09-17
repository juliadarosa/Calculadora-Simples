
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calculadora extends StatefulWidget {
  const calculadora({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<calculadora> {

  final _Inputvalor1 = TextEditingController();
  final _Inputvalor2 = TextEditingController();
  List<double> _listarresultado = [];
  double  _resultado = 0 ;
  String   _info = '' ;





  void listarCalculo2(){
    _listarresultado.add(_resultado);

  }

  void somarCaulculo(String Valor1, String Valor2) {
    setState(() {
      double valor1 = double.parse(Valor1);
      double valor2 = double.parse(Valor2) ;
      _resultado =   valor1 + valor2 ;


    });
  }

  void subtrairCaulculo(String Valor1, String Valor2) {
    setState(() {
      double valor1 = double.parse(Valor1);
      double valor2 = double.parse(Valor2) ;
      _resultado =   valor1 - valor2 ;
    });
  }

  void dividirCaulculo(String Valor1, String Valor2) {
    setState(() {
      double valor1 = double.parse(Valor1);
      double valor2 = double.parse(Valor2) ;
      _resultado =   valor1 / valor2 ;
    });
  }

  void MultiplicarCaulculo(String Valor1, String Valor2) {
    setState(() {
      double valor1 = double.parse(Valor1);
      double valor2 = double.parse(Valor2) ;
      _resultado =   valor1 * valor2 ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(

              icon:  Icon(Icons.refresh),
              tooltip: 'Remover',
              alignment: Alignment.center,
              color: Colors.red,
              onPressed: () {
                MultiplicarCaulculo(_Inputvalor1.text, _Inputvalor2.text);
                _Inputvalor1.text = '';
                _Inputvalor2.text = '';
              },
            ),
          ],

    ),




        body: Center(
            child: Column(
                children: [



                  const Text(
                    'digite seu primeiro valor:',
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.left,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _Inputvalor1,
                  ),
                  const Text(
                      'digite seu segundo valor',
                      style: TextStyle(color: Colors.blue)
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _Inputvalor2,
                  ),

                  Row (
                      mainAxisAlignment:  MainAxisAlignment.center,

                    children: [

                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          somarCaulculo(_Inputvalor1.text, _Inputvalor2.text);
                          _Inputvalor1.text = '';
                          _Inputvalor2.text = '';
                          listarCalculo2();
                        },
                        child: Text('+'),

                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          subtrairCaulculo(_Inputvalor1.text, _Inputvalor2.text);
                          _Inputvalor1.text = '';
                          _Inputvalor2.text = '';
                          listarCalculo2();
                        },
                        child: Text('-'),

                      ),



                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          dividirCaulculo(_Inputvalor1.text, _Inputvalor2.text);
                          _Inputvalor1.text = '';
                          _Inputvalor2.text = '';
                          listarCalculo2();
                        },
                        child: Text('/'),

                      ),

                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          MultiplicarCaulculo(_Inputvalor1.text, _Inputvalor2.text);
                          _Inputvalor1.text = '';
                          _Inputvalor2.text = '';
                          listarCalculo2();
                        },
                        child: Text('*'),

                      ),

                    ],
                  ),




                  const Text(
                      'Seu resultado é : !',
                      style: TextStyle(color: Colors.blue)
                  ),

                  Text(
                    '$_resultado',

                  ),

                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: _listarresultado.length ,
                    itemBuilder: (context, index) {
                      return
                        ListTile(
                          leading: IconButton(
                            icon: const Icon(Icons.android),
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                _listarresultado.remove(_listarresultado[index]);
                              });

                            },
                          ),
                          title: Text(_listarresultado[index].toString()),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove),
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                _listarresultado.remove(_listarresultado[index]);
                              });






    },
                          ),
                          onTap: () {
                          },
                        );
                      //   ListTile(
                      //   title: Text(_listarImc[index].toString()),
                      // );
                    },
                  )
                ])));
  }
}