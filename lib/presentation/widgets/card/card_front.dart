import 'package:flutter/material.dart';

import '../shared/widgets.dart';

class FrontCard extends StatefulWidget {
  const FrontCard({super.key});

  @override
  State<FrontCard> createState() => _FrontCardState();
}

class _FrontCardState extends State<FrontCard> {
  @override
  Widget build(BuildContext context) {
    return CardLayout(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                CustomText(
                  text: '**** **** **** 8596',
                  fontSize: 30,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Expiry Date'.toUpperCase(),
                          withOpacity: true,
                        ),
                        CustomText(text: '25/2023'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Card Holder Name'.toUpperCase(),
                          withOpacity: true,
                        ),
                        CustomText(text: 'Eliezer António'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
            ),
            Positioned(
              left: 8,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
