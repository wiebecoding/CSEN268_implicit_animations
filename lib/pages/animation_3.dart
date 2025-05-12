import 'package:flutter/material.dart';

class ThirdAnimation extends StatefulWidget {
  const ThirdAnimation({super.key});

  @override
  State<ThirdAnimation> createState() => LogoRotateState();
}

class LogoRotateState extends State<ThirdAnimation> {
  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 1.0 / 8.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _changeRotation,
          child: const Text('Rotate Logo'),
        ),
        Padding(
          padding: const EdgeInsets.all(50),
          child: AnimatedRotation(
            turns: turns,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }
}