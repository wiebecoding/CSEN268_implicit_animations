import 'package:flutter/material.dart';

class FirstAnimation extends StatelessWidget {
  const FirstAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedCrossFade Sample')),
      body: Center(child: AnimatedCrossFadeExample()),
    );
  }
}

class AnimatedCrossFadeExample extends StatefulWidget {
  AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool first = false;
  double seconds = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          first = !first;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Center(
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: (1000 * seconds).floor()),
                firstChild: const FlutterLogo(
                  style: FlutterLogoStyle.horizontal,
                  size: 250.0,
                ),
                secondChild: const FlutterLogo(
                  style: FlutterLogoStyle.stacked,
                  size: 250.0,
                ),
                crossFadeState:
                    first
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
              ),
            ),
            SizedBox(height: 16.0),
            Slider(
              min: 0,
              max: 3.0,
              value: seconds,
              onChanged: (double value) {
                setState(() {
                  seconds = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
