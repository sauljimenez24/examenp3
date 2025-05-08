import 'package:flutter/material.dart';
import 'package:jimenez/pantallainicio.dart';
import 'package:jimenez/p1datepicker.dart';
import 'package:jimenez/p2timepicker.dart';
import 'package:jimenez/p3stack.dart';
import 'package:jimenez/p4lineargradient.dart';
import 'package:jimenez/p5elevatedbutton.dart';
import 'package:jimenez/p6floatingactionbutton.dart';

import 'package:jimenez/p8iconbutton.dart';
import 'package:jimenez/p9navigator.dart';
import 'package:jimenez/p10card.dart';
import 'package:jimenez/p11clipper.dart';

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
