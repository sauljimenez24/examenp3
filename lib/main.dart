import 'package:flutter/material.dart';
import 'package:jimenez/pantallainicio.dart';
import 'package:jimenez/p1datepicker.dart';
import 'package:jimenez/p2timepicker.dart';
import 'package:jimenez/p3stack.dart';
import 'package:jimenez/p4lineargradient.dart';
import 'package:jimenez/p5elevatedbutton.dart';
import 'package:jimenez/p6floatingactionbutton.dart';
import 'package:jimenez/p7mawmaterialbutton.dart';
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
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
