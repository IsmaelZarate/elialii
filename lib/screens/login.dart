import 'package:elialii/screens/design.dart';
import 'package:elialii/screens/woman.dart';
import 'package:flutter/material.dart';

class Loggin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //  cuerpo(), mande llamar el widget de cuerpo

          /*  Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/color_fondo.jpg'),
                fit: BoxFit.fill),
          )),*/

          const Image(image: AssetImage('assets/images/Logo.png')),

          Container(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                nombre(),
                campoUsuario(),
                campoPassword(),
                botonLogin(context)
                //  botonEntrar(context)
              ],
            )),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 12, 49, 151),
          child: const Icon(Icons.turn_left, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Design()),
            );
          }),
    );
  }
}

/*Widget cuerpo() {
  return Container(
      decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/images/Logo.png'), fit: BoxFit.fill),
  ));
}*/

Widget nombre() {
  return const Text(
    "Iniciar Sesion",
    style: TextStyle(
        color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.w900),
  );
}

Widget campoUsuario() {
  return Container(
    padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5), // es para centrar mejor el campo de relleno
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white, //colorea el fondo
        filled: true, // aqui te da control de autorizar el color del fondo
      ),
    ),
  );
}

Widget campoPassword() {
  return Container(
    padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5), // es para centrar mejor el campo de relleno
    child: const TextField(
      obscureText: true, //ESTA LINEA DE CODIGO ES PARA OCULTAR LA CONTRASENA
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white, //colorea el fondo
        filled: true, // aqui te da control de autorizar el color del fondo
      ),
    ),
  );
}

/*Widget botonEntrar(context) {
  return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 12, 49, 151),
      child: const Icon(Icons.login, color: Colors.black),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Woman()),
        );
      });
}*/

Widget botonLogin(context) {
  return TextButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Design(),
          ));
    },
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.black,
    ),
    child: Text('Entrar'),
  );
}
