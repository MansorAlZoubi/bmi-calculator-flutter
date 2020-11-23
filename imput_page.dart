import 'package:bmi_calculator/Nextpage.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_contet.dart';
import 'reusable_card.dart';
import 'constant.dart';
import 'omer.dart';
import 'mohmmad.dart';
import 'saif.dart';
import 'ss.dart';
//const  bottomContainerHeight=80.0;
//const activeCardColour=Color(0xFF1D1E33);
//const inactiveCardcolor=Color(0xFFB1555);
//const bottomContainerColor=Color(0xFFEB1555);
enum Gander{
  mael,
  famel,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gander oopGander;
  int heght=180;
  int hight=50;
  int age=18;
  // Color maelCard=inactiveCardcolor;
  //Color famelCard=inactiveCardcolor;
 // void updateColor(Gander opp)
  //{
    //if(opp==Gander.mael)
      //{
        //if(maelCard==inactiveCardcolor)
          //{
           // maelCard=activeCardColour;
         //   famelCard=inactiveCardcolor;
  // }
//else {
// maelCard=inactiveCardcolor;
// }
  //}
  //if(opp==Gander.famel)
  // {
  //if(famelCard==inactiveCardcolor)
  // {
  // famelCard=activeCardColour;
// maelCard=inactiveCardcolor;
  //  }
// else
  // {
//  famelCard=inactiveCardcolor;
// }
//  }
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: <Widget>[
          Expanded(child:Row(
            children: <Widget>[
             Expanded(child:ReusableCard(
               onprased: (){
                 setState(() {
                   oopGander=Gander.mael;
                 });
               },
               color:oopGander==Gander.mael ? kActiveCardColour:kCnactiveCardcolor,
             cardChild: IconContent(
               icon: FontAwesomeIcons.mars,
               labl:'mael',
             ),

             ),
             ),
              Expanded(child:ReusableCard(
                     onprased: (){
                       setState(() {
                         oopGander=Gander.famel;
                       });
                     },
              color:oopGander==Gander.famel ? kActiveCardColour:kCnactiveCardcolor,
                cardChild:IconContent(
                  icon:FontAwesomeIcons.venus,
                  labl:'Famel',
              ) ,
              ),
              ),
            ],
          )
          ),
          Expanded(child:ReusableCard(
              color:kActiveCardColour,

            cardChild: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                Text(
                  "Height",
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children:<Widget> [
                    Text(heght.toString(),
                    style:KnumberTextStyal,
                    //TextStyle(
                      //fontSize: 50.0,
                      //fontWeight: FontWeight.w700,

                    //),

                    ),
                    Text('cm',
                    style: kLabelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTickMarkColor: Color(0xFF8D8E98),
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                    RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(
                    value: heght.toDouble(),
                    min: 120, max: 220,
                    //activeColor: Colors.white,
                   // inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue){
                      setState(() {
                        heght=newValue.round();
                      });
                      print(newValue);

                    },
                  ),
                ),
              ],
            ),
          ),
          ),
          Expanded(child:Row(
            children: <Widget>[
              Expanded(child:ReusableCard(
                  color:kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Weight',style: kLabelTextStyle,
                    ),
                    Text(hight.toString(),
                      style: KnumberTextStyal,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconBoutten(icon: FontAwesomeIcons.plus,
                            onPressed:(){
                             setState(() {
                               hight++;
                             });
                            }
                        ),
                        //FloatingActionButton(
                       // child:Icon(
                       // Icons.add,
                        // color: Colors.white,
                        // ),
                        //backgroundColor: Color(0xFF4C4F5E),

                        SizedBox(
                          width:10.0,
                        ),
                        RoundIconBoutten(icon: FontAwesomeIcons.minus,
                        onPressed: (){
                          setState(() {
                            hight--;
                          });
                        },
                        ),
                        //FloatingActionButton(child:Icon(Icons.remove,color: Colors.white,),
                          //backgroundColor: Color(0xFF4C4F5E),

                      ],
                    ),
                  ],
                ),
              ),
              ),
              Expanded(child:ReusableCard(
                  color:kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AGE',
                    style:kLabelTextStyle,

                      ),
                    Text(
                      age.toString(),
                      style: KnumberTextStyal,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RounfIconAGE(icon: FontAwesomeIcons.plus,
                         ppo: (){
                          setState(() {
                         age++;

                        });
                          },
                        ),
                       //FloatingActionButton(
                        //backgroundColor: Color(0xFF4C4F5E),
                        //child: Icon(
                          //Icons.add,
                         // color: Colors.white,
                      //),
                      //),
                        SizedBox(
                          width: 10.0,
                        ),
                       RounfIconAGE(icon: FontAwesomeIcons.minus, ppo: (){
                        setState(() {
                          age--;
                        });
                       }
                       ,)
                      //FloatingActionButton(
                      //backgroundColor: Color(0xFF4C4F5E),
                      //child: Icon(
                       //Icons.add,
                        //color: Colors.white,
                      //),x
                     ],
                    ),
                  ],
                ),
              ),
              ),
            ],
          )),
          Bouttenbb(Bouttenaa: 'CALCULATE', onTop: (){
            Ee clc=Ee(height: hight,weight: heght);
          Navigator.push(context, MaterialPageRoute(builder: (context){
           return NextPage(QqBmi:clc.QqBmi() ,Result:clc.getResult() ,io:clc.io() ,);

      },),);
    }, ),
        ],
      ),
    );

  }
}




