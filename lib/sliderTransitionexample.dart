import 'package:flutter/material.dart';

class SliderTransitionExample extends StatefulWidget {
  const SliderTransitionExample({Key? key}) : super(key: key);

  @override
  _SliderTransitionExampleState createState() =>
      _SliderTransitionExampleState();
}

class _SliderTransitionExampleState extends State<SliderTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    ));
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
        title: const Text('Slider Transition Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideTransition(
              position: _offsetAnimation,
              child: const FlutterLogo(size: 100),
            ),
            const SizedBox(height: 40),
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 1.0,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                  _controller.value = value;
                });
              },
            ),
            Text('Valor: ${_sliderValue.toStringAsFixed(2)}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _controller.repeat(reverse: true);
              },
              child: const Text('Animar Automáticamente'),
            ),
          ],
        ),
      ),
    );
  }
}
