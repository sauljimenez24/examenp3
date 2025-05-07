import 'package:flutter/material.dart';

class PantallaNueve extends StatelessWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Material Widget - Pantalla 9'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 15,
        shadowColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Primer ejemplo de Material con sombra
            Material(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20.0),
              elevation: 15.0,
              shadowColor: Colors.red[100],
              child: InkWell(
                borderRadius: BorderRadius.circular(20.0),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Widget Material con sombra roja'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 250.0,
                  child: const Text(
                    'Widget con Sombra',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            // Segundo ejemplo con ListTile
            Material(
              color: Colors.deepOrangeAccent,
              elevation: 30.0,
              shadowColor: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('ListTile con sombra azul'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: const ListTile(
                  leading: Icon(Icons.star, color: Colors.white),
                  title: Text(
                    'Elemento interactivo',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ),

            // Tercer ejemplo con texto
            Material(
              color: Colors.yellowAccent,
              elevation: 10.0,
              shadowColor: Colors.yellow[100],
              borderRadius: BorderRadius.circular(5),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Texto con efecto de elevación',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Botón de demostración adicional
            Material(
              color: Colors.blueAccent,
              elevation: 8.0,
              shadowColor: Colors.blue[200],
              borderRadius: BorderRadius.circular(25),
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: () {
                  Navigator.pushNamed(context, '/pantalla10');
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: const Text(
                    'Siguiente',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }
}
