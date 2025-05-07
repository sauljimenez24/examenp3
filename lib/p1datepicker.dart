import 'package:flutter/material.dart';

class PantallaUno extends StatefulWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  _PantallaUnoState createState() => _PantallaUnoState();
}

class _PantallaUnoState extends State<PantallaUno> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) => {
          setState(() {
            _dateTime = value!;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Date Picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _dateTime.toString(),
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            MaterialButton(
              onPressed: _showDatePicker,
              color: Colors.deepPurple[400],
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Choose Date",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
