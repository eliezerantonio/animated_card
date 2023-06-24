import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../widgets/card/widgets.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _targetPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween(begin: 1.0, end: _targetPosition),
          duration: const Duration(milliseconds: 1000),
          onEnd: () {},
          curve: Curves.easeIn,
          builder: (_, value, __) {
            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(math.pi * value),
              alignment: FractionalOffset.center,
              child: value < 0.5 ? const FrontCard() : const BackCard(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_targetPosition == 0) {
              _targetPosition = 1;
            } else {
              _targetPosition = 0;
            }
          });
        },
        child: const Icon(Icons.rotate_left),
      ),
    );
  }
}



