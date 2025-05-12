import 'package:flutter/material.dart';

class ForthAnimation extends StatefulWidget {
  const ForthAnimation({
    required this.duration,
    required this.curve,
    super.key,
  });

  final Duration duration;

  final Curve curve;

  @override
  State<ForthAnimation> createState() => _ForthAnimationState();
}

class _ForthAnimationState extends State<ForthAnimation> {
  bool _isSelected = false;
  Duration dur = Duration(milliseconds: 500);
  int current = 0;

  List<Curve> curves = [Curves.fastOutSlowIn, Curves.bounceInOut];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedSize Sample')),
      body: Center(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              child: ColoredBox(
                color: Colors.amberAccent,
                child: AnimatedSize(
                  duration: dur,
                  curve: curves[current],
                  alignment: Alignment.center,
                  child: SizedBox.square(
                    dimension: _isSelected ? 250.0 : 100.0,
                    child: const Center(child: FlutterLogo(size: 100.0)),
                  ),
                ),
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
            SizedBox(height: 16.0),
            FilledButton(
              onPressed: () {
                setState(() {
                  current = ((current + 1) % curves.length).floor();
                });
              },
              child: Text("Toggle Curve"),
            ),
          ],
        ),
      ),
    );
  }
}
