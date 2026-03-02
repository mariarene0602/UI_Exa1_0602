import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002366),
      appBar: AppBar(
        title: Text("Acceso Clientes"),
        backgroundColor: Colors.blueGrey, // Diferente color
        actions: [Icon(Icons.pets), Icon(Icons.help_outline)],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("LOGIN", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: "Username or email")),
              TextField(decoration: InputDecoration(labelText: "Password"), obscureText: true),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (v){}),
                  Text("Remember me", style: TextStyle(fontSize: 12)),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey, shape: StadiumBorder()),
                onPressed: () => Navigator.pushNamed(context, '/dashboard'),
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 40), child: Text("Log in", style: TextStyle(color: Colors.white))),
              ),
              TextButton(onPressed: () {}, child: Text("Forgot Password?", style: TextStyle(color: Colors.blue)))
            ],
          ),
        ),
      ),
    );
  }
}