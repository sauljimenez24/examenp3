import 'package:flutter/material.dart';
import 'package:jimenez/pantallainicio.dart';
import 'package:jimenez/perspectiveanimationdemo.dart';
import 'package:jimenez/sliderTransitionexample.dart';
import 'package:jimenez/animatedcontainerdemo.dart';
import 'package:jimenez/animatedclock.dart';
import 'package:jimenez/animatedpositioneddemo.dart';

void main() => runApp(MisRutasApp());

class MisRutasApp extends StatelessWidget {
  const MisRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/pantalla1': (context) => const PerspectiveAnimationDemo(),
        '/pantalla2': (context) => const SliderTransitionExample(),
        '/pantalla3': (context) => const AnimatedContainerDemo(),
        '/pantalla4': (context) => const AnimatedClock(),
        '/pantalla5': (context) => const AnimatedPositionedDemo(),
      },
    );
  }
}
