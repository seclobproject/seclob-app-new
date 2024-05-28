import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/screens/home_page/job_page/uploadResume.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';
import '../../../resources/color.dart';

class jobinnerpage extends StatefulWidget {
  const jobinnerpage({super.key});

  @override
  State<jobinnerpage> createState() => _jobinnerpageState();
}

class _jobinnerpageState extends State<jobinnerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JobAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 30,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/location.svg',
                    // Replace with the path to your SVG file
                    width: 12,
                    height: 12,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Seclob pvt.ltd, Palazhi, Kozhikode',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Computer Operator Part Time / Data\nEntry Operator Fresher",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: blue1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Seclob Technologies Pvt.Ltd",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: textgrey1),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Cyberpark, Calicut",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: textgrey1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 28,
                      width: 77,
                      decoration: BoxDecoration(
                          color: buttonGreen,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text(
                        "Full time",
                        style: TextStyle(color: bg1, fontSize: 12),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Minimum Qualifications ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
                    return Text(
                                "* High school diploma, secondary education level or equivalent.",
                                style: TextStyle(color: textgray3, fontSize: 12 ),
                              );
                  }),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Preferred Qualifications",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Text(
                            "* Engineering graduate with 4 plus years experience in plant operation preferably on SILO Machines or Diploma in electrical or instrumentation or mechanical with 7 to 8 years’ experience.",
                            style: TextStyle(color: textgray3, fontSize: 12),
                          );
              }))),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Align(
            //     alignment: Alignment.topLeft,
            //     child: Row(
            //       children: [
            //         Text("Key Skills",
            //           style: TextStyle(fontSize:15,fontWeight: FontWeight.w600),),
            //         SizedBox(
            //           height: 40,
            //           child: ListView.builder(
            //             scrollDirection: Axis.horizontal,
            //             itemCount: 10,
            //             itemBuilder: (context, index) {
            //               return Padding(
            //                   padding: EdgeInsets.all(8.0),
            //                   child: Container(
            //                     height: 10,
            //                     width: 80,
            //                     decoration: BoxDecoration(
            //                         color: textgrey1,
            //                         borderRadius: BorderRadius.all(Radius.circular(29))),
            //                   )
            //               );
            //             },
            //           ),
            //         ),
            //
            //
            //       ],
            //     ),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 62,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: textgrey1),
                          borderRadius: BorderRadius.circular(5)
                          ),
                          
                      child: Row(
                        children: [
                          Text("₹1,500",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14, color: buttonGreen)),
                          SizedBox(
                            width: 5,
                          ),
                          Text("-",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14, color: buttonGreen)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "₹2,000 / day",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14, color: buttonGreen),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => uploadresume()),
                        );
                      },
                      child: Container(
                        height: 35,
                        width: 83,
                        decoration: BoxDecoration(
                            color: buttonGreen,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                            child: Text(
                          "Apply now",
                          style: TextStyle(color: bg1, fontSize: 12),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hiring Insights",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Text(
                            "* Hiring 3 candidates for this role",
                            style: TextStyle(color: textgray3, fontSize: 12),
                          );
              }))),

            SizedBox(height: 10,),
            

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Job Activity",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Align(
                  alignment: Alignment.topLeft,
            child : Text("* Posted 1 day ago", style: TextStyle(color: textgray3, fontSize: 12)),
            )
            ),

                          SizedBox(height: 10,),

            

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recent Jobs",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: bluanothor),
                        textAlign: TextAlign.justify,
                  )),
            ),

            SizedBox(
              height: 5,
            ),

            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                        color: greycolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 22,
                            width: 70,
                            decoration: BoxDecoration(
                                color: jobcolor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/boostbtn.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Boosted',
                                  style: TextStyle(fontSize: 9, color: bg1),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Computer Operator Part Time / Data\nEntry Operator Fresher",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Seclob Technologies, Cyberpark, Calicut",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 141,
                                decoration: BoxDecoration(
                                    color: boxgrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/cash.svg',
                                      height: 18,
                                      width: 18,
                                    ),
                                    Text("₹1000"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("₹1000"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: boxgrey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/cash.svg',
                                      height: 18,
                                      width: 18,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Full-time"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/add.svg',
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Hiring Multiple candidates",
                                  style: TextStyle(color: textgrey1)),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/time2.svg',
                                height: 18,
                                width: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Urgently Hiring",
                                style: TextStyle(color: textgrey1),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Posted in 10 days to ago,based on jobs you explored",
                            style: TextStyle(fontSize: 11, color: textgray),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
