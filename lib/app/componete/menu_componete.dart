import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app/app/pages/calculadora.dart';
import 'package:primeiro_app/app/pages/lista.dart';

import '../pages/galeria.dart';
import '../pages/home_page.dart';

  Widget Menu(BuildContext context) {
    return
      Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("julia@mail.com"),
              accountName: Text("julia"),
              currentAccountPicture: CircleAvatar(
                child: Text("SZ"),
              ),


            ),
            ListTile(
                title: Text("icons"),
                onTap: () {

                  Navigator.push(
                      context ,
                      MaterialPageRoute(builder: (context) => HomePage(title: 'lista'))
                  );
                }

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("home"),
              onTap: () {

                Navigator.push(
                context ,
                MaterialPageRoute(builder: (context) => lista(title: 'home'))
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.calculate),
              title: Text("caluladora"),

              onTap: () {

                Navigator.push(
                    context ,
                    MaterialPageRoute(builder: (context) => calculadora(title: 'bora caluladora'))

                );

              },

            ),


             ListTile(
             leading: Icon(Icons.shopping_basket),
              title: Text("galeria"),
              onTap: () {
              Navigator.push(
              context ,
              MaterialPageRoute(builder: (context) => galeria(title: 'lista'))

              );
             },
             ),
            // ListTile(
            //   leading: Icon(Icons.favorite),
            //   title: Text("Favoritos"),
            //   onTap: () {
            //     Navigator.pop(context);
            //     //Navegar para outra página
            //   },
            // ),
          ],
        ),
      );

  }



