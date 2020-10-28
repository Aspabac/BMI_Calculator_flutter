import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';

const bottomContainerHeight = 80.0;
const hexCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: hexCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        gender: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: hexCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: hexCardColor),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReusableCard(colour: hexCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(colour: hexCardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}



