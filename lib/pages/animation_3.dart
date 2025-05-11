import 'package:flutter/material.dart';

class ThirdAnimation extends StatelessWidget {
  const ThirdAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 3: AnimatedRotation'),
      ),
      body: const Center(
        child: Text('Content for Animation 3'),
      ),
    );
  }
}