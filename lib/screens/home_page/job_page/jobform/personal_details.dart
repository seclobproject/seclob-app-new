import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/color.dart';
import 'experience_details.dart';
import 'job_details.dart';

class personaldetails extends StatefulWidget {
  const personaldetails({super.key});

  @override
  State<personaldetails> createState() => _personaldetailsState();
}

class _personaldetailsState extends State<personaldetails> {

  int selectedChip = 0;
  List<String> options = ['Experienced', 'Fresher', 'Student'];

  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    "Personal details",
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
              padding: const EdgeInsets.symmetric(horizontal: 20,),
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

                      Text("Personal details",
                        style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: buttoncolor),),

                      SizedBox(height: 10,),


                      Text("Name",style: TextStyle(fontSize: 12),),
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
                                hintText: "Enter Name",
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

                      Text("Last Name",style: TextStyle(fontSize: 12),),
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
                                hintText: "Last Name",
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

                      Text("Phone Number",style: TextStyle(fontSize: 12),),
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
                                hintText: "Phone Number",
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

                      Text("Email",style: TextStyle(fontSize: 12),),
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
                                hintText: "Email",
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

                      Text("District",style: TextStyle(fontSize: 12),),
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
                                hintText: "All Location",
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

                      Text("Gender",style: TextStyle(fontSize: 12),),
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
                                hintText: "Male or Female",
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

                      Text("Job Tittle",style: TextStyle(fontSize: 12),),
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
                                hintText: "Job Tittle",
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

                      Text("Skill",style: TextStyle(fontSize: 12),),
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
                                hintText: "Skill",
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

                      SizedBox(height: 30,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                          Navigator.pop(context);
                        },
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: colorwhite,
                                border: Border.all(width: 1,color: textgray),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Center(
                                  child: Text("Back",style: TextStyle(fontSize: 15,color: textgray),)),
                            ),
                          ),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const experiencedetails()),
                          );
                        },
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: buttoncolor,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Center(
                                  child: Text("Next",style: TextStyle(fontSize: 15,color: bg1),)),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,)
          ],
        ),
      ),

    );
  }
}


