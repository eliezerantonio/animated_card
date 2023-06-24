import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../shared/widgets.dart';

class BackCard extends StatelessWidget {
  const BackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(math.pi),
        alignment: FractionalOffset.center,
        child: CardLayout(
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 35,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.white10,
                ])),
              )
            ],
          ),
        ));
  }
}
