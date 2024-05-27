import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../resources/color.dart';

class interviewtab extends StatefulWidget {
  const interviewtab({super.key});

  @override
  State<interviewtab> createState() => _interviewtabState();
}

class _interviewtabState extends State<interviewtab> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: chipcolor1,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Text("Upcoming: 0",style: TextStyle(fontSize: 10),),
              ),
            ),
          )

        ],
      ),
    );
  }
}
