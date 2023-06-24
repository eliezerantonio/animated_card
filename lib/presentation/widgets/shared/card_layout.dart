import 'package:flutter/material.dart';

class CardLayout extends StatefulWidget {
  const CardLayout(this.widget, {super.key});

  final Widget widget;

  @override
  State<CardLayout> createState() => _CardLayoutState();
}

class _CardLayoutState extends State<CardLayout> {
  Offset offset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.identity()
          ..setEntry(2, 3, 0.005)
          ..rotateX(0.01 * offset.dx)
          ..rotateY(0.01 * offset.dy),
        alignment: FractionalOffset.center,
        child: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              offset += details.delta;
            });
          },
          onDoubleTap: () => setState(() {
            offset = Offset.zero;
          }),
          child: Container(
            width: 340,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.blue.withOpacity(0.9),
                  Colors.purple.withOpacity(0.9),
                ],
              ),
            ),
            child: widget.widget,
          ),
        ));
  }
}
