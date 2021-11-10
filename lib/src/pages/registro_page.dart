import 'dart:math';

import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          _crearFondo(context, _screenSize),
          _loginForm(context),
        ],
      ),
    );
  }

  Widget _crearFondo(BuildContext context, Size screenSize) {
    final size = MediaQuery.of(context).size;
    final fondo_morado = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Color.fromRGBO(92, 78, 154, 1)),
    );

    final forma_fondo = Transform.rotate(
        angle: -pi / 1.0,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0), color: Colors.white),
          width: screenSize.width,
          height: 200.0,
        ));

    return Stack(
      children: <Widget>[
        fondo_morado,
        Positioned(top: -50.0, child: forma_fondo),
        /*Positioned(top: 30.0, left: -70.0, child: circulo),
        Positioned(bottom: -30.0, right: 10.0, child: circulo),
        Positioned(top: -60.0, right: -50.0, child: circulo),
        Positioned(bottom: -30.0, left: 30.0, child: circulo),*/
        Container(
          padding: EdgeInsets.only(top: 40.0),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20.0,
              ),
              Icon(Icons.person_pin_circle, color: Colors.black, size: 100.00),
              SizedBox(
                width: 30.0,
              ),
              Text(
                'Galaspace',
                style: TextStyle(
                  color: Color.fromRGBO(62, 38, 105, 1),
                  fontSize: 40.0,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _loginForm(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 200.0,
          )),
          //_crearEmail(),
          Container(
            width: 370.0,
            child: Column(
              children: <Widget>[
                _crearNombre(),
                SizedBox(
                  height: 30.0,
                ),
                _crearApellidos(),
                SizedBox(
                  height: 30.0,
                ),
                _crearEmail(),
                SizedBox(
                  height: 30.0,
                ),
                _crearPassword(),
                SizedBox(
                  height: 40.0,
                ),
                _crearBoton(),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          FlatButton(
            height: 60.0,
            minWidth: 370.0,
            textColor: Colors.white,
            color: Color.fromRGBO(231, 31, 118, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            onPressed: () {
              print('Pagina de Registro');
              Navigator.pushReplacementNamed(context, 'Login');
            },
            child: Text(
              'ATRAS',
              style: TextStyle(
                  fontSize: 25.0 /*, color: Color.fromRGBO(92, 78, 154, 1)*/),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _crearNombre() {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 20.0),
      //height: 600.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            //contentPadding: EdgeInsets.only(left: 20.0),
            icon: Icon(
              Icons.person_pin_rounded,
              color: Colors.deepPurpleAccent,
            ),
            hintText: 'ej. Juan Carlos',
            labelText: 'NOMBRE',
          ),
        ),
      ),
    );
  }

  Widget _crearApellidos() {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 20.0),
      //height: 600.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            //contentPadding: EdgeInsets.only(left: 20.0),
            icon: Icon(
              Icons.person_pin_rounded,
              color: Colors.deepPurpleAccent,
            ),
            hintText: 'ej. Gonzalez Paz',
            labelText: 'APELLIDOS',
          ),
        ),
      ),
    );
  }

  Widget _crearEmail() {
    /*return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Correo Electronico',
        labelText: 'Email',
        helperText: 'Solo el Email',
        suffixIcon: Icon(Icons.alternate_email_outlined),
        icon: Icon(Icons.email_outlined),
      ),
      onChanged: (valor) {
        setState(() {
          //_email = valor;
          print(valor);
        });
      },
    );*/
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 20.0),
      //height: 600.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            //contentPadding: EdgeInsets.only(left: 20.0),
            icon: Icon(
              Icons.email,
              color: Colors.deepPurpleAccent,
            ),
            hintText: 'ejemplo@correo.com',
            labelText: 'Email',
          ),
        ),
      ),
    );
  }

  Widget _crearPassword() {
    /*return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Correo Electronico',
        labelText: 'Email',
        helperText: 'Solo el Email',
        suffixIcon: Icon(Icons.alternate_email_outlined),
        icon: Icon(Icons.email_outlined),
      ),
      onChanged: (valor) {
        setState(() {
          //_email = valor;
          print(valor);
        });
      },
    );*/
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.deepPurpleAccent,
            ),
            labelText: 'Password',
          ),
        ),
      ),
    );
  }

  Widget _crearBoton() {
    //fromValidStream
    return ElevatedButton(
      child: Container(
        width: 370.0,
        height: 60.0,
        //padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Center(
            child: Text(
          'GUARDAR',
          style: TextStyle(
              fontSize: 25.0 /*, color: Color.fromRGBO(92, 78, 154, 1)*/),
        )),
      ),
      style: ButtonStyle(
        foregroundColor: getColor(Color.fromRGBO(92, 78, 154, 1), Colors.white),
        backgroundColor: getColor(
            Color.fromRGBO(255, 255, 255, 1), Color.fromRGBO(92, 78, 154, 1)),
        side: getBorde(Color.fromRGBO(92, 78, 154, 1), Colors.black),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(color: Colors.red)),
        ),
      ),

      /*shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      color: Colors.white,
      textColor: Colors.white,*/
      onPressed: () {
        print('Hola mundo');
      },
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPresionado) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPresionado;
      } else {
        return color;
      }
    };

    return MaterialStateProperty.resolveWith(getColor);
  }

  MaterialStateProperty<BorderSide> getBorde(
      Color color, Color colorPresionado) {
    final getBorde = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return BorderSide(color: colorPresionado, width: 2);
      } else {
        return BorderSide(color: color, width: 2);
      }
    };

    return MaterialStateProperty.resolveWith(getBorde);
  }
}
