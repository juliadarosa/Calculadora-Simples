
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lista extends StatefulWidget {
  const lista({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<lista> createState() => _ListaState();
}

class _ListaState extends State<lista> {

  final _InputPeso = TextEditingController();
  final _InputAltura = TextEditingController();
  List<String> _listarImc = [];
  double  _imc = 0 ;
  String   _info = '' ;



  void listarCalculo(){
    _listarImc.add(_info);

  }

  void Caulculo(String Peso, String Altura) {
    setState(() {
      double peso = double.parse(Peso);
      double altura = double.parse(Altura) ;
      double imc = 0;
      _imc = peso / (altura*altura) ;
      if(_imc < 18.6){
        _info = 'Abaixo do Peso (${_imc.toStringAsPrecision(3)})';
      } else if(_imc >= 18.6 && _imc < 24.9){
        _info = 'Peso Ideal (${_imc.toStringAsPrecision(3)})';
      } else if(_imc >= 24.9 && _imc < 29.9){
        _info = 'Levemente Acima do Peso (${_imc.toStringAsPrecision(3)})';
      } else if(_imc >= 29.9 && _imc < 34.9){
        _info = 'Obesidade Grau I (${_imc.toStringAsPrecision(3)})';
      } else if(_imc >= 34.9 && _imc < 39.9){
        _info = 'Obesidade Grau II (${_imc.toStringAsPrecision(3)})';
      } else if(_imc >= 40){
        _info = 'Obesidade Grau III (${_imc.toStringAsPrecision(3)})';
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),

        ),

        body: Center(
            child: Column(
                children: [
                  Image.network("https://i.imgur.com/EgJwROn.jpg"),
                  const Text(
                    'Peso (kg):',
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.left,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _InputPeso,
                  ),
                  const Text(
                      'Altura (cm):',
                      style: TextStyle(color: Colors.blue)
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: _InputAltura,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    onPressed: () {
                      Caulculo(_InputPeso.text, _InputAltura.text);
                      _InputPeso.text = '';
                      _InputAltura.text = '';
                      listarCalculo();
                    },
                    child: Text('Calcular'),

                  ),
                  const Text(
                      'Informe seus dados!',
                      style: TextStyle(color: Colors.blue)
                  ),

                  Text(
                      '$_info',

                  ),

                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: _listarImc.length ,
                    itemBuilder: (context, index) {
                      return
                        ListTile(
                          leading: IconButton(
                            icon: const Icon(Icons.android),
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                _listarImc.remove(_listarImc[index]);
                              });

                            },
                          ),
                          title: Text(_listarImc[index].toString()),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove),
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                _listarImc.remove(_listarImc[index]);
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