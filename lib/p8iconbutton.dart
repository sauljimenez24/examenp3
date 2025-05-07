import 'package:flutter/material.dart';

class PantallaOcho extends StatelessWidget {
  const PantallaOcho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Button')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                print('Icon button is pressed');
              },
              icon: const Icon(
                Icons.email,
                color: Colors.deepPurple,
                size: 35,
              ),
            ),
            const Text(
              'Press on the email icon',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
