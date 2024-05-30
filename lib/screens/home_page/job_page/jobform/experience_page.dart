import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:seclob_pro/resources/color.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/application_overview.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/experience_details.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/uploadResume.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';
import 'package:seclob_pro/widgets/application_progress.dart';

class ExpreiencePage extends StatefulWidget {
  const ExpreiencePage({super.key});

  @override
  State<ExpreiencePage> createState() => _ExpreiencePageState();
}

class _ExpreiencePageState extends State<ExpreiencePage> {
  String Experiencedropdownvalue = '3 Months - 6 months';
  var Experienceitems = [
    '3 Months - 6 months',
    '1 - 2 year',
    '2-3 year',
    '3 - 5 year',
    'I dont have experience'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JobAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Enter a past job that shows relevant experience",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: buttonGreen),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Relevant Experience",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Company",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: borderGrey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          textAlign: TextAlign.start, // <-- Main change here
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          onChanged: (text) {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Experience",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: borderGrey),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButton<String>(
                          value: Experiencedropdownvalue,
                          isExpanded: true,
                          underline: Container(), // Remove default underline
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: textgrey1), // Set arrow color
                          items: Experienceitems.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13), // Adjust text style
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              Experiencedropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Job title",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: borderGrey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          textAlign: TextAlign.start, // <-- Main change here
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          onChanged: (text) {},
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ApplicationOverview()),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: 85,
                            decoration: BoxDecoration(
                                color: blue1,
                                border: Border.all(color: bordercolor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Center(
                                child: Text(
                              "Continue",
                              style: TextStyle(fontSize: 11, color: bg1),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 200,),

                    ProgressBar(stepVal: 4)

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
