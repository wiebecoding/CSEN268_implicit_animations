import 'package:flutter/material.dart';

class FirstAnimation extends StatelessWidget {
  const FirstAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 1: AnimatedCrossFade'),
      ),
      body: const Center(
        child: Text('Content for Animation 1'),
      ),
    );
  }
}