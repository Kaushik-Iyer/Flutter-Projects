import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
class Results extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:
          [
            Expanded(child: Container(
              child:Text(
                'Your Result',
                    style:titleTextStyle,
              )

            ),
            ),
            Expanded(
              flex:5,
                child: ReusableCard(
                  colour:activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Normal',
                        style: resultTextStyle,
                      ),
                      Text(
                        '18.3',
                        style:bmiTextStyle,
                      ),
                      Text(
                        'Your BMI result is quite low.',
                        textAlign: TextAlign.center,
                        style:bodyTextStyle,
                      ),
                    ],
                  ),
                ))
            
          ]
      ),
    );
  }
}
