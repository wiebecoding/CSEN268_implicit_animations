import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/home/animation1');
              },
              child: const Text('Go to Animation 1'),
            ),
            const SizedBox(height: 16), // Gap between buttons
            ElevatedButton(
              onPressed: () {
                context.go('/home/animation2');
              },
              child: const Text('Go to Animation 2'),
            ),
            const SizedBox(height: 16), // Gap between buttons
            ElevatedButton(
              onPressed: () {
                context.go('/home/animation3');
              },
              child: const Text('Go to Animation 3'),
            ),
            const SizedBox(height: 16), // Gap between buttons
            ElevatedButton(
              onPressed: () {
                context.go('/home/animation4');
              },
              child: const Text('Go to Animation 4'),
            ),
            const SizedBox(height: 16), // Gap between buttons
            ElevatedButton(
              onPressed: () {
                context.go('/home/animation5');
              },
              child: const Text('Go to Animation 5'),
            ),
          ],
        ),
      ),
    );
  }
}