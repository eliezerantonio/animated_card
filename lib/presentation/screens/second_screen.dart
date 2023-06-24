// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class SecondScreen extends StatefulWidget {
//   const SecondScreen({super.key});

//   @override
//   State<SecondScreen> createState() => _SecondScreenState();
// }

// class _SecondScreenState extends State<SecondScreen> {
//   Offset offset = Offset.zero;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Transform(
//             transform: Matrix4.identity()
//               ..setEntry(2, 3, 0.005)
//               ..rotateX(0.01 * offset.dx)
//               ..rotateY(0.01 * offset.dy),
//             alignment: FractionalOffset.center,
//             child: GestureDetector(
//               onPanUpdate: (details) {
//                 setState(() {
//                   offset += details.delta;
//                 });

//                 print(offset);
//               },
//               onDoubleTap: () => setState(() {
//                 offset = Offset.zero;
//               }),
//               child: offset.dx > 0 || offset.dx > 0
//                   ? const BackCard()
//                   : const FrontCard(),
//             )),
//       ),
//     );
//   }
// }

// class FrontCard extends StatefulWidget {
//   const FrontCard({super.key});

//   @override
//   State<FrontCard> createState() => _FrontCardState();
// }

// class _FrontCardState extends State<FrontCard> {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutCard(
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Stack(
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Spacer(),
//                 CustomText(
//                   text: '**** **** **** 8596',
//                   fontSize: 30,
//                 ),
//                 const Spacer(),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CustomText(
//                           text: 'Expiry Date'.toUpperCase(),
//                           withOpacity: true,
//                         ),
//                         CustomText(text: '25/2023'),
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CustomText(
//                           text: 'Card Holder Name'.toUpperCase(),
//                           withOpacity: true,
//                         ),
//                         CustomText(text: 'Eliezer António'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Container(
//               width: 15,
//               height: 15,
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.4),
//                 shape: BoxShape.circle,
//               ),
//             ),
//             Positioned(
//               left: 8,
//               child: Container(
//                 width: 15,
//                 height: 15,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.7),
//                   shape: BoxShape.circle,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomText extends StatelessWidget {
//   CustomText({super.key, required this.text, this.withOpacity, this.fontSize});
//   final String text;
//   bool? withOpacity = false;
//   double? fontSize = 14;
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(
//         color: Colors.white.withOpacity(withOpacity == true ? 0.5 : 1.0),
//         fontSize: fontSize ?? 14,
//       ),
//     );
//   }
// }

// class BackCard extends StatelessWidget {
//   const BackCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Transform(
//         transform: Matrix4.identity()
//           ..setEntry(3, 2, 0.001)
//           ..rotateY(math.pi),
//         alignment: FractionalOffset.center,
//         child: LayoutCard(
//           Column(
//             children: [
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 35,
//                 decoration: const BoxDecoration(
//                     gradient: LinearGradient(colors: [
//                   Colors.white,
//                   Colors.white10,
//                 ])),
//               )
//             ],
//           ),
//         ));
//   }
// }

// class LayoutCard extends StatelessWidget {
//   const LayoutCard(this.widget, {super.key});

//   final Widget widget;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 340,
//       height: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         gradient: LinearGradient(
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//           colors: [
//             Colors.blue.withOpacity(0.9),
//             Colors.purple.withOpacity(0.9),
//           ],
//         ),
//       ),
//       child: widget,
//     );
//   }
// }
