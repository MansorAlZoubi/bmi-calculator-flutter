import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color,this.cardChild,this.onprased});
  final Color color;
  final Widget cardChild;
  final Function onprased;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onprased,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color:color ,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
