import 'package:flutter/material.dart';
import 'package:seclob_pro/resources/color.dart';

class ProgressBar extends StatelessWidget {
  ProgressBar({super.key, required this.stepVal});

  var stepVal;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text("Application step $stepVal of 5"),
        Stack(
          children: [Container(
            width: deviceWidth,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: textgrey1
            ),
          ),

          Container(
            width: (deviceWidth/5)*stepVal,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: buttonGreen
            ),
          ),

          ]
        ),
      ],
    );
  }
}