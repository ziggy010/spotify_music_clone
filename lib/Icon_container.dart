import 'package:flutter/material.dart';
import 'package:spotify_redesign/constants.dart';

class ReusableIconContainer extends StatelessWidget {
  final String specificIcon;
  final double iconHeight;

  ReusableIconContainer({required this.specificIcon, required this.iconHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17.0),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          kDarkShadow,
          BoxShadow(
              color: Colors.grey.shade800,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1),
        ],
      ),
      child: Image.asset(
        specificIcon,
        height: iconHeight,
        color: Colors.grey.shade200,
      ),
    );
  }
}
