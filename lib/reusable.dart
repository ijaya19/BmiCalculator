import 'package:flutter/material.dart';

class RepeatedCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  VoidCallback? onPress;
  RepeatedCard({required this.colour, required this.cardChild,this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
        margin: EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
