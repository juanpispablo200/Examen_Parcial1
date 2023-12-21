import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona({required this.nombre, required this.apellido, this.edad = 0});

  factory Persona.fromEdad(int edad) {
    return Persona(nombre: '', apellido: '', edad: edad);
  }

  @override
  String toString() {
    return '$nombre $apellido - Edad: $edad';
  }
}

class MyApp extends StatelessWidget {
  final Persona estudiante =
      Persona(nombre: 'Juan', apellido: 'Perez', edad: 25);
  final Persona estudiantes =
      Persona(nombre: 'pablo', apellido: 'Granda', edad: 15);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicación de Estudiantes'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Text(
              estudiante.toString(),
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
