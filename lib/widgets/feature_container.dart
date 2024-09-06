import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:voca/widgets/colors.dart';

class FeatureContainer extends StatelessWidget {
  final Color color;
  final String headerText;
  final String discriptionText;
  const FeatureContainer({
    super.key,
    required this.color,
    required this.headerText,
    required this.discriptionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0).copyWith(
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headerText,
              style: const TextStyle(
                fontFamily: 'Cera Pro',
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Pallete.blackColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                discriptionText,
                style: const TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
