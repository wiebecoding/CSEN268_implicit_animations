import 'package:flutter/material.dart';

class FifthAnimation extends StatefulWidget {
  const FifthAnimation({super.key});

  @override
  State<FifthAnimation> createState() => _FifthAnimationState();
}

class _FifthAnimationState extends State<FifthAnimation> {
  Offset offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedSlide Sample')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(50.0),
                      child: AnimatedSlide(
                        offset: offset,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        child: const FlutterLogo(size: 100.0),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text('Y', style: textTheme.bodyMedium),
                      Expanded(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Slider(
                            min: -1.0,
                            max: 1.0,
                            value: offset.dy,
                            onChanged: (double value) {
                              setState(() {
                                offset = Offset(offset.dx, value);
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('X', style: textTheme.bodyMedium),
                Expanded(
                  child: Slider(
                    min: -1.0,
                    max: 1.0,
                    value: offset.dx,
                    onChanged: (double value) {
                      setState(() {
                        offset = Offset(value, offset.dy);
                      });
                    },
                  ),
                ),
                const SizedBox(width: 48.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}