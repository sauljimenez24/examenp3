import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S T A C K - Pantalla 3"),
      ),
      body: Center(
        child: Stack(
          // Alineación de los hijos del Stack
          alignment: Alignment.center,
          children: [
            // Contenedor más atrás (fondo)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.blue[200],
                child: const Center(
                  child: Text(
                    'Capa 1 - Fondo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            ),

            // Contenedor intermedio
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue[400],
                child: const Center(
                  child: Text(
                    'Capa 2 - Medio',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // Contenedor más adelante (frente)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue[600],
                child: const Center(
                  child: Text(
                    'Capa 3',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // Botón flotante sobre el stack
            Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('¡Stack interactivo!'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: const Icon(Icons.touch_app),
              ),
            ),
          ],
        ),
      ),

      // Barra inferior con información
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.blue[800],
        child: const Center(
          child: Text(
            'Ejemplo de Stack con 3 capas',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
