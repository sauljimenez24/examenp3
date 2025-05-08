import 'package:flutter/material.dart';

class AnimatedPositionedDemo extends StatefulWidget {
  const AnimatedPositionedDemo({Key? key}) : super(key: key);

  @override
  _AnimatedPositionedDemoState createState() => _AnimatedPositionedDemoState();
}

class _AnimatedPositionedDemoState extends State<AnimatedPositionedDemo> {
  bool _isMoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPositioned Demo'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            left: _isMoved ? MediaQuery.of(context).size.width - 120 : 20,
            top: _isMoved ? MediaQuery.of(context).size.height - 120 : 20,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isMoved = !_isMoved;
                });
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isMoved = !_isMoved;
                  });
                },
                child: Text(_isMoved ? 'Reset Position' : 'Move Box'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
