import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';

import '../../../../commonpage/test.dart';
import '../../../../resources/color.dart';


class jobdetails extends StatefulWidget {
  const jobdetails({super.key});

  @override
  State<jobdetails> createState() => _jobdetailsState();
}

class _jobdetailsState extends State<jobdetails> {

  int selectedChip = 0;
  List<String> options = ['Experienced', 'Fresher', 'Student'];

  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: JobAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      width: 0.5,
                      color: textColor1,)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [



                      Text("Job Details",
                        style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: blue),),

                      SizedBox(height: 10,),

                      Text("Specialization",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Month",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),


                      SizedBox(height: 10,),

                      Text("Last job Location",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Last job Location",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),


                      SizedBox(height: 10,),

                      Text("How did you hear Seclob ?",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "How did you hear Seclob ?",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),


                      SizedBox(height: 10,),

                      Text("Notice Period",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Notice Period",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),


                      SizedBox(height: 10,),

                      Text("Current Salary of Last Month",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Current Salary of Last Month",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),



                      SizedBox(height: 10,),

                      Text("Expected Salary",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Expected Salary",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      Text("Connect your social media account",
                        style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: blue),),

                      SizedBox(height: 10,),




                      SizedBox(height: 10,),


                      Text("Facebook URL",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Facebook URL",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),




                      SizedBox(height: 10,),


                      Text("Twitter URL",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Twitter URL",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),


                      Text("LinkedIn URL ",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "LinkedIn URL ",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),


                      Text("Instagram URL",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),
                      Container(

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.start, // <-- Main change here
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Instagram URL",
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.6),
                                    fontSize: 12
                                )
                            ),
                            onChanged: (text){

                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),


                      GestureDetector(
                        onTap: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>  MyApp()),
                          // );
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: buttoncolor,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(
                                child: Text("Save",style: TextStyle(fontSize: 15,color: bg1),)),
                          ),
                        ),
                      )


                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}