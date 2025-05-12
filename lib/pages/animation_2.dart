import 'package:flutter/material.dart';

class SecondAnimation extends StatelessWidget {
  const SecondAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedAlign Sample')),
      body: Center(child: AnimatedAlignExample()),
    );
  }
}

class AnimatedAlignExample extends StatefulWidget {
  AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;
  double seconds = 1.0;
  int current = 0;

  List<Curve> curves = [Curves.fastOutSlowIn, Curves.bounceInOut];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: 250.0,
                height: 250.0,
                color: Colors.blueGrey,
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.topRight : Alignment.bottomLeft,
                  duration: Duration(milliseconds: (1000 * seconds).floor()),
                  curve: curves[current],
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Slider(
              min: 0,
              max: 5.0,
              value: seconds,
              onChanged: (double value) {
                setState(() {
                  seconds = value;
                });
              },
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
