import 'package:flutter/material.dart';

class ThirdAnimation extends StatefulWidget {
  const ThirdAnimation({super.key});

  @override
  State<ThirdAnimation> createState() => LogoRotateState();
}

class LogoRotateState extends State<ThirdAnimation> {
  double turns = 0.0;
  double div = 8.0;
  Duration dur = Duration(milliseconds: 500);

  void _changeRotation() {
    setState(() => turns += 1.0 / div);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedRotation Sample')),
      body: Center(
        child: Column(
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
                duration: dur,
                child: const FlutterLogo(size: 100),
              ),
            ),
            Text('Duration'),
            SizedBox(
              height: 50,
              child: RotatedBox(
                quarterTurns: 2,
                child: Slider(
                  min: 10,
                  max: 2000,
                  value: dur.inMilliseconds.toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      dur = Duration(milliseconds: value.toInt());
                    });
                  },
                ),
              ),
            ),
            Text('Turns Divisor'),
            SizedBox(
              height: 50,
              child: RotatedBox(
                quarterTurns: 0,
                child: Slider(
                  min: 1,
                  max: 10,
                  value: div,
                  onChanged: (double value) {
                    setState(() {
                      div = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
