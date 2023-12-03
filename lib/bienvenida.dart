import 'package:flutter/material.dart';

class Bienvenida extends StatelessWidget {
  final bool usuarioValido;
  final String username;

  Bienvenida({required this.usuarioValido, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenida'),
        backgroundColor: const Color.fromARGB(255, 54, 149,
            244), // Cambia el color de fondo de la barra de navegación
      ),
      body: Container(
        color: const Color.fromARGB(
            255, 118, 118, 118), // Cambia el color de fondo de la pantalla
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                usuarioValido ? Icons.check_circle : Icons.cancel,
                color: usuarioValido
                    ? const Color.fromARGB(255, 10, 123, 14)
                    : const Color.fromARGB(255, 112, 7, 0),
                size: 100,
              ),
              SizedBox(height: 20),
              Text(
                usuarioValido
                    ? '¡Bienvenido, $username!'
                    : 'Usuario no válido. Inténtalo de nuevo.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
