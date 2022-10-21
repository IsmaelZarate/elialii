//import 'package:elialii/screens/carrito.dart';
import 'package:elialii/screens/woman.dart';
import 'package:elialii/screens/man.dart';
//import 'package:elialii/screens/carrito.dart';
//import 'package:elialii/screens/accesorios.dart';
import 'package:elialii/screens/login.dart';
import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Eliali Boutique')),
      body: Column(
        children: [
          //  imagen central
          Image(image: AssetImage('assets/images/Logo.png')),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Welcome'),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ismael Zarate Marron'),
              accountEmail: Text('izarate409@accitesz.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  'I',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: const Text('Caballero'),
              leading: Icon(Icons.man),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Man()));
              },
            ),
            ListTile(
              title: const Text('Dama'),
              leading: Icon(Icons.woman),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Woman()));
              },
            ),
            /*  ListTile(
              title: const Text('Accesorios'),
              leading: Icon(Icons.backpack),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Accesorios()));
              },
            ),
            ListTile(
              title: const Text('Carrito'),
              leading: Icon(Icons.shopping_cart),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carrito()));
              },
            ),*/
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 12, 49, 151),
          child: const Icon(Icons.person, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Loggin()),
            );
          }),
    );
  }
}
