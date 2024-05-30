import 'package:flutter/material.dart';
import 'package:seclob_pro/resources/color.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/application_overview.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/experience_page.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';
import 'package:seclob_pro/widgets/application_progress.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  String? _selectedredio;
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
                        "Questions from Seclob Technologies",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: buttonGreen),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Will you be able to reliably commute or relocate to calicut, for this job?",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10,),

                  ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Option $index',
                            groupValue: _selectedredio,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedredio = value!;
                              });
                            },
                          ),
                          Text(
                            'Yes, I can make the commute',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  );
                  }
                  ),


                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "How many years of total work experience do you have?",
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
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExpreiencePage()),
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

                    ProgressBar(stepVal: 3)

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
    );;
  }
}