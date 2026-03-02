import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  // --- VARIABLES DE IMÁGENES (Sustituye por tus links finales) ---
  final String urlLogo = "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/logo.png";
  
  // Aquí puedes ir pegando los links que encuentres de los iconos sugeridos arriba
  final String img1 = "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/cert.webp"; 
  final String img2 = "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/silbato.webp";
  final String img3 = "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/perro%20sentado.jpg";
  final String img4 = "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/comida.jpg";
  final String img5 = "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/cronometro.jpg";
  final String img6 = "https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/correa.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "ENTRENAMIENTO CANINO - MARIA HDEZ 6I", 
          style: TextStyle(color: Colors.white) // TEXTO BLANCO
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF002366), // AZUL MARINO
        iconTheme: const IconThemeData(color: Colors.white), // ICONOS DE BARRA EN BLANCO
        actions: const [
          Icon(Icons.notifications_active, color: Colors.white), // NOTIFICACIÓN BLANCA
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Icon(Icons.settings, color: Colors.white), // CONFIG BLANCA
          ),
        ],
      ),
      body: Column(
        children: [
          // Header con Logo
          Container(
            height: 220,
            width: double.infinity,
            color: Colors.grey[200],
            child: Center(
              child: CircleAvatar(
                radius: 75,
                backgroundColor: const Color(0xFFC5A059), // DORADO
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.network(
                      urlLogo,
                      fit: BoxFit.cover,
                      width: 140,
                      height: 140,
                      errorBuilder: (context, error, stackTrace) => 
                        const Icon(Icons.pets, size: 60, color: Color(0xFF002366)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          
          // Cuadrícula de 6 iconos (3 Arriba, 3 Abajo)
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(20),
              mainAxisSpacing: 25,
              children: [
                _buildMenuItem(img1, "Certificados"),
                _buildMenuItem(img2, "Comandos"),
                _buildMenuItem(img3, "Modo Quieto"),
                _buildMenuItem(img4, "Dieta K9"),
                _buildMenuItem(img5, "Sesión Tips"),
                _buildMenuItem(img6, "Perfil Canino"),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFC5A059),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Avisos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String url, String label) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFC5A059), width: 1.5),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)
            ],
          ),
          child: ClipOval(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.network(
                url,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => 
                  const Icon(Icons.image_not_supported, color: Colors.grey),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xFF002366)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}