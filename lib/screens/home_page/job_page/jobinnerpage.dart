import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/screens/home_page/job_page/uploadResume.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                    color: greycolor,
                    borderRadius: BorderRadius.all(Radius.circular(29))),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Computer Operator Part Time / Data\nEntry Operator Fresher",
                        style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Seclob Technologies Pvt.Ltd",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: bluetext),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cyberpark, Calicut",
                        style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("₹10,500",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200, fontSize: 14)),
                              SizedBox(
                                width: 5,
                              ),
                              Text("-",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200, fontSize: 14)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "₹20,000 a month",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200, fontSize: 14),
                              ),

                              SizedBox(width: 60,),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => uploadresume()),
                                  );
                                },
                                child: Container(
                                  height: 28,
                                  width: 77,
                                  decoration: BoxDecoration(
                                      color: buttoncolor,
                                      borderRadius: BorderRadius.all(Radius.circular(10))

                                  ),
                                  child: Center(
                                      child: Text("Apply",style: TextStyle(color: bg1,fontSize: 12),)),
                                ),
                              )

                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Posted : 30+ days ago",
                            style: TextStyle(fontSize: 11, color: textgray),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Openings : 1",
                            style: TextStyle(fontSize: 11, color: textgray),
                          ),


                        ],
                      ),
                    ],
                  ),
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
                    "Job description",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Data entry operator would be responsible for collecting and entering data in databases with maintaining accurate records of valuable company information. Ideal candidate should have essential data entry skills, like fast typing with an eye for detail and familiarity with spreadsheets and online forms",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 11,color:textgray3 ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Roles and Responsibilities",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("- Consistent coordination of resources",style: TextStyle(
                      color: textgray3,fontSize: 12
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("- Weekly monitoring and follow up on unassigned resources",
                    style:TextStyle( color: textgray3,fontSize: 12),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("- Onboarding new team members explaining scheduling ",style: TextStyle(
                      color: textgray3,fontSize: 12
                  ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("- Consistent coordination of resources",style: TextStyle(
                      color: textgray3,fontSize: 12
                  ),)),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Role : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Computer Operator Part Time',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w300),
                          )
                        ]
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Employment Type : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Full Time, Permanent',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w300),
                          )
                        ]
                    )
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Experience : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: '1+',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w300),
                          )
                        ]
                    )
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Package : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' ₹10,500 - ₹20,000 ',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400),
                          )
                        ]
                    )
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Education : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' Any Graduate ',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400),
                          )
                        ]
                    )
                ),
              ),
            ),


            SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Location : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' Calicut ',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400),
                          )
                        ]
                    )
                ),
              ),
            ),

            SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Locality : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' Mavoor Road, palazhi , thondayad ',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400),
                          )
                        ]
                    )
                ),
              ),
            ),


            SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Gender : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' Male ',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400),
                          )
                        ]
                    )
                ),
              ),
            ),

            SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Contact Number : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' 9074343614 ',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400),
                          )
                        ]
                    )
                ),
              ),
            ),

            SizedBox(height: 10,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                    TextSpan(
                        text: 'Email : ',
                        style: TextStyle(fontSize:12,fontWeight: FontWeight.w600),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ' krishnakumarkreatives@gmail.com ',
                            style: TextStyle(fontSize: 12,fontWeight:FontWeight.w400),
                          )
                        ]
                    )
                ),
              ),
            ),

            SizedBox(height: 10,),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Key Skills ")),
            ),

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

            SizedBox(height: 5,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:10,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 10,
                          width: 80,
                          decoration: BoxDecoration(
                              color: chipcolor,
                              borderRadius: BorderRadius.all(Radius.circular(29))),
                          child: Center(
                              child: Text("Management",style: TextStyle(fontSize: 10),)),
                        )
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recent Jobs",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400,color: bluanothor),
                  )),
            ),


            SizedBox(height: 10,),

            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(

                    width: 400,
                    decoration: BoxDecoration(
                        color: greycolor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            height: 22,
                            width: 70,
                            decoration: BoxDecoration(
                                color: jobcolor,
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/svg/boostbtn.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(width: 5,),

                                Text('Boosted',style: TextStyle(fontSize: 9,color: bg1),)
                              ],
                            ),
                          ),

                          SizedBox(height: 5,),


                          Text("Computer Operator Part Time / Data\nEntry Operator Fresher",
                            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),

                          SizedBox(height: 10,),

                          Text("Seclob Technologies, Cyberpark, Calicut",
                            style: TextStyle(fontWeight: FontWeight.w300,fontSize: 13),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 141,
                                decoration: BoxDecoration(
                                    color: boxgrey,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/cash.svg',
                                      height:18,
                                      width: 18,),

                                    Text("₹1000"),
                                    SizedBox(width: 5,),
                                    Text("₹1000"),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: boxgrey,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/cash.svg',
                                      height:18,
                                      width: 18,),
                                    SizedBox(width: 5,),
                                    Text("Full-time"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/add.svg',
                                height:18,
                                width: 18,),
                              SizedBox(width: 10,),
                              Text("Hiring Multiple candidates",style: TextStyle(color: textgrey1)),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/time2.svg',
                                height:18,
                                width: 18,),
                              SizedBox(width: 10,),
                              Text("Urgently Hiring",style: TextStyle(color: textgrey1),),
                            ],
                          ),
                          SizedBox(height: 10,),

                          Text("Posted in 10 days to ago,based on jobs you explored",style: TextStyle(fontSize: 11,color: textgray),)
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
