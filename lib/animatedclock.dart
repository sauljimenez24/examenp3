import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:async';

class AnimatedClock extends StatefulWidget {
  const AnimatedClock({Key? key}) : super(key: key);

  @override
  _AnimatedClockState createState() => _AnimatedClockState();
}

class _AnimatedClockState extends State<AnimatedClock> {
  late Timer _timer;
  DateTime _currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reloj Animado - CustomPaint'),
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(300, 300),
          painter: ClockPainter(time: _currentTime),
        ),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  final DateTime time;

  ClockPainter({required this.time});

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final center = Offset(centerX, centerY);
    final radius = math.min(centerX, centerY);

    // Dibujar el círculo del reloj
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    canvas.drawCircle(center, radius, paint);

    // Dibujar manecillas
    final hourHandX = centerX +
        radius *
            0.4 *
            math.cos((time.hour % 12 + time.minute / 60) * math.pi / 6 -
                math.pi / 2);
    final hourHandY = centerY +
        radius *
            0.4 *
            math.sin((time.hour % 12 + time.minute / 60) * math.pi / 6 -
                math.pi / 2);

    final minuteHandX = centerX +
        radius * 0.6 * math.cos(time.minute * math.pi / 30 - math.pi / 2);
    final minuteHandY = centerY +
        radius * 0.6 * math.sin(time.minute * math.pi / 30 - math.pi / 2);

    final secondHandX = centerX +
        radius * 0.8 * math.cos(time.second * math.pi / 30 - math.pi / 2);
    final secondHandY = centerY +
        radius * 0.8 * math.sin(time.second * math.pi / 30 - math.pi / 2);

    // Pintar manecillas
    canvas.drawLine(
      center,
      Offset(hourHandX, hourHandY),
      Paint()
        ..color = Colors.black
        ..strokeWidth = 6,
    );

    canvas.drawLine(
      center,
      Offset(minuteHandX, minuteHandY),
      Paint()
        ..color = Colors.blue
        ..strokeWidth = 4,
    );

    canvas.drawLine(
      center,
      Offset(secondHandX, secondHandY),
      Paint()
        ..color = Colors.red
        ..strokeWidth = 2,
    );

    // Dibujar centro del reloj
    canvas.drawCircle(center, radius * 0.05, Paint()..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
