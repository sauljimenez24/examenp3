import 'package:flutter/material.dart';
import 'dart:math' as math;

class PerspectiveAnimationDemo extends StatefulWidget {
  const PerspectiveAnimationDemo({Key? key}) : super(key: key);

  @override
  _PerspectiveAnimationDemoState createState() =>
      _PerspectiveAnimationDemoState();
}

class _PerspectiveAnimationDemoState extends State<PerspectiveAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double _perspectiveValue = 0.001;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perspective Animation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, _perspectiveValue)
                    ..rotateY(math.pi * _animation.value),
                  alignment: Alignment.center,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: const Icon(
                      Icons.flutter_dash,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Slider(
            value: _perspectiveValue,
            min: 0.0001,
            max: 0.01,
            onChanged: (value) {
              setState(() {
                _perspectiveValue = value;
              });
            },
          ),
          Text('Perspective: ${_perspectiveValue.toStringAsFixed(4)}'),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _controller.repeat(reverse: true),
                child: const Text('Start Animation'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () => _controller.stop(),
                child: const Text('Stop Animation'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
