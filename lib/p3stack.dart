import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key}) : super(key: key);

  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  // Variables animables
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(8);
  bool _isSquare = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              child: const Text('Cambiar Tamaño'),
              onPressed: () {
                setState(() {
                  _width = _isSquare ? 200 : 100;
                  _height = _isSquare ? 100 : 200;
                  _isSquare = !_isSquare;
                });
              },
            ),
            ElevatedButton(
              child: const Text('Cambiar Color'),
              onPressed: () {
                setState(() {
                  _color = _color == Colors.blue ? Colors.red : Colors.blue;
                });
              },
            ),
            ElevatedButton(
              child: const Text('Redondear Esquinas'),
              onPressed: () {
                setState(() {
                  _borderRadius = _borderRadius == BorderRadius.circular(8)
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(8);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
