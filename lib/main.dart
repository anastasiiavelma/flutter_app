import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

/// root in this application
class Main extends StatelessWidget {
  /// constructor for creating main widget
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

/// Widget with text and colored background
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();

  Color _color = Colors.white;

  void changeColor() => {
        setState(() {
          try {
            const n = 256;
            _color = Color.fromARGB(
              _random.nextInt(n),
              _random.nextInt(n),
              _random.nextInt(n),
              _random.nextInt(n),
            );
          } catch (e) {
            const Text('Something went wrong');
          }
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Hey there',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
