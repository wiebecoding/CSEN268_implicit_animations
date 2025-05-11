import 'package:flutter/material.dart';

class SecondAnimation extends StatelessWidget {
  const SecondAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 2: AnimatedAlign'),
      ),
      body: const Center(
        child: Text('Content for Animation 2'),
      ),
    );
  }
}