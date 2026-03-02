import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo Azul Marino
      backgroundColor: const Color(0xFF002366), 
      appBar: AppBar(
        // Tu nombre, apellido y grupo como solicitaste
        title: const Text("María Hernández 6I"),
        backgroundColor: const Color(0xFFC5A059), // Dorado
        // Dos iconos de acciones corregidos
        actions: const [
          Icon(Icons.pets), 
          Icon(Icons.info_outline),
        ],
      ),
      body: Center(
        child: SingleChildScrollView( // Para evitar error de espacio en teclados
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF002366),
                  ),
                ),
                const SizedBox(height: 25),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 35),
                // Botón Register
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFC5A059),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    onPressed: () {
                      // Navegación a la ruta nombrada de la Pantalla 2
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                // Texto en la parte inferior (traducción del diseño original)
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    "¿Ya tienes cuenta? Inicia sesión aquí",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}