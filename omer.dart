import 'package:flutter/material.dart';
import 'constant.dart';

class Bouttenbb extends StatelessWidget {
  Bouttenbb({@required this.onTop,@required this.Bouttenaa});
  final Function onTop;
  final String Bouttenaa;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      //onTap: (){
      //Navigator.push(context, MaterialPageRoute(builder: (context){
      // return NextPage();
      // },),);
      //},
      child: Container(
        child:Center(


          child: Text(Bouttenaa,
            style: KJAText,
          ),
        ),
        color: KDottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
      ),
    );
  }
}