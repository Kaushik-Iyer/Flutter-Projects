import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'constants.dart';
import 'package:bmi_calculator/results.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour=inactiveCardColor;
  Color femaleCardColour=inactiveCardColor;
  Gender selectedGender;
  int height=180;
  int weight=60;
  int age=18;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                onPress: (){
                  setState((){
                    selectedGender:Gender.male;
                  });
                },
                  cardChild: insideCard(name:'Male',icon: FontAwesomeIcons.mars,),
                  colour:selectedGender==Gender.male? activeCardColor:inactiveCardColor)),
              Expanded(child: ReusableCard(
                onPress: (){
                  setState((){
                    selectedGender:Gender.female;
                  });
                },
                cardChild: insideCard(name:'FEMALE',icon:FontAwesomeIcons.venus),
                  colour:selectedGender==Gender.female?activeCardColor:inactiveCardColor)),
            ],
          )),
          Expanded(child: ReusableCard(
            cardChild:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',style:labelTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style:numberTextStyle,
                    ),
                    Text(
                      'cm',
                      style: labelTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data:SliderTheme.of(context).copyWith(
                    inactiveTrackColor:Color(0xFF8D8E98) ,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:RoundSliderOverlayShape(overlayRadius: 30.0),
                    thumbColor: Color(0xFFEB1555),
                    activeTrackColor: Colors.white,
                    overlayColor: Color(0x29EB1555),
                  ),
                  child: Slider(value:height.toDouble(),
                      min:120.0,
                      max:220.0,
                      onChanged:(double newValue){
                    setState((){
                     height=newValue.round();
                    });
                      }),
                ),
              ],
            ) ,
              colour:Color(0xFF1D1E33))),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT',style: labelTextStyle,),
                    Text(weight.toString(),style:numberTextStyle),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       RoundIconButton(
                         icon:FontAwesomeIcons.minus,
                         onPressed:(){
                           setState((){
                             weight--;
                           });
                         },
                       ),
                       SizedBox(
                         width:10.0,
                       ),
                       RoundIconButton(
                         icon:FontAwesomeIcons.plus,
                         onPressed: (){
                           setState((){
                             weight++;
                           });
                         },
                       )
                     ],

                   ),

                    ],

                ),
                  colour:Color(0xFF1D1E33))),
              Expanded(child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: labelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: numberTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon:FontAwesomeIcons.minus,
                          onPressed:(){
                            setState((){
                              age--;
                            });
                          },
                        ),
                        SizedBox(
                          width:10.0,
                        ),
                        RoundIconButton(
                          icon:FontAwesomeIcons.plus,
                          onPressed: (){
                            setState((){
                              age++;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
                  colour:Color(0xFF1D1E33))),
            ],
          ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Results()));
            },
            child: Container(
              child:Center(
                  child: Text('CALCULATE', style:largeButtonTextStyle)),
              margin:EdgeInsets.only(top:10.0),
              width:double.infinity,
              padding:EdgeInsets.only(bottom:20.0),
            ),
          )
        ],
      )
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required this.onPressed});
final IconData icon;
final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon),
      onPressed: (){},
      constraints: BoxConstraints.tightFor(
        width:56.0,
        height:56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),

    );
  }
}


