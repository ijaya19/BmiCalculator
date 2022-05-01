import 'package:flutter/material.dart';
import './constants.dart';

class ColumnIcon extends StatelessWidget {
  final IconData icon;
  final String gender;

  ColumnIcon({required this.icon, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender, style: labelStyle)
      ],
    );
  }
}
