import 'package:flutter/material.dart';
import 'constants.dart';

class TimeContainer extends StatelessWidget {
  final String time;

  TimeContainer(this.time);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
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
      child: Text(
        time,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
