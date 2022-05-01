import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback changeOnPress;
  RoundIconButton({required this.icon, required this.changeOnPress});

  @override
  Widget build(BuildContext context) {
    return (RawMaterialButton(
      onPressed: changeOnPress,
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0x4C4F5E),
      child: Icon(icon),
    ));
  }
}
