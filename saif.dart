import 'package:flutter/material.dart';
class RounfIconAGE extends StatelessWidget {
  RounfIconAGE({@required this.icon,@required this.ppo});
  final IconData icon;
  final Function ppo;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon),
      onPressed: ppo,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
