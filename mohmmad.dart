import 'package:flutter/material.dart';

class RoundIconBoutten extends StatelessWidget {
  RoundIconBoutten({@required this.icon,@required this.onPressed});
  //final //Widget child;
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      //child: child,
      child: Icon(icon),
      onPressed:onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width:56.0,
        height: 56.0,
      ),
      shape: CircleBorder(
      ),
      fillColor:Color(0xFF4C4F5E),
    );
  }
}