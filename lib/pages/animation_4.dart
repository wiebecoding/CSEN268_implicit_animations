import 'package:flutter/material.dart';

class ForthAnimation extends StatefulWidget {
  const ForthAnimation({required this.duration, required this.curve, super.key});

  final Duration duration;

  final Curve curve;

  @override
  State<ForthAnimation> createState() => _ForthAnimationState();
}

class _ForthAnimationState extends State<ForthAnimation> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: ColoredBox(
        color: Colors.amberAccent,
        child: AnimatedSize(
          duration: widget.duration,
          curve: widget.curve,
          child: SizedBox.square(
            dimension: _isSelected ? 250.0 : 100.0,
            child: const Center(child: FlutterLogo(size: 75.0)),
          ),
        ),
      ),
    );
  }
}