import 'package:flutter/material.dart';

class FifthAnimation extends StatelessWidget {
  const FifthAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation 5'),
      ),
      body: const Center(
        child: Text('Content for Animation 5'),
      ),
    );
  }
}