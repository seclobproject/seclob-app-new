import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/color.dart';
import 'candidates_tab.dart';
import 'dashboard_tab.dart';
import 'interview_tab.dart';
import 'job_tab.dart';

class jobhome extends StatefulWidget {
   jobhome({super.key});

  @override
  State<jobhome> createState() => _jobhomeState();
}

class _jobhomeState extends State<jobhome> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(

          body: Column(
            children: [
          
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        'assets/svg/back.svg',
                        // Replace with the path to your SVG file
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Jobs",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          color: img_bagground,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey, // shadow color
                              blurRadius: 0, // shadow radius
                              offset: Offset(0, .1), // shadow offset
                              spreadRadius:
                              0, // The amount the box should be inflated prior to applying the blur
                              // set blur style
                            ),
                          ],
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/location.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 110,
                              child: Text(
                                "Palazhi,Kozhikode,67..",
                                style: TextStyle(
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
          
                  ],
                ),
              ),
          
              Container(
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey[300]
                ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: colorwhite,
                        borderRadius:  BorderRadius.circular(5)
                                
                    ) ,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 11, ),  // Adjust the font size here
                    unselectedLabelStyle: TextStyle(fontSize: 11),  // Adjust the font size here
                    tabs: const  [
                      SizedBox(width: 200,child: Tab(text: 'Dashboard',)),
                      SizedBox(width: 200,child: Tab(text: 'Jobs',)),
                      SizedBox(width: 200,child: Tab(text: 'Candidates',)),
                      SizedBox(width: 200,child: Tab(text: 'Interviews',))
                    ],
                  ),
                ),
              ),
               Expanded(
                  child: TabBarView(
                    children:  [
                      dashboardtab(),
                      jobtab(),
                      candidates(),
                      interviewtab()
                    ],
                  )
              )
            ],
          )
      ),
    );
  }
}


