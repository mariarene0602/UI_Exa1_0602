import 'package:flutter/material.dart';
import 'mispantallas/Inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Entrenamiento Canino',
    // Definición de rutas nombradas
    initialRoute: '/',
    routes: {
      '/': (context) => Inicio(),
      '/login': (context) => Pantalla2(),
      '/dashboard': (context) => Pantalla3(),
    },
  ));
}