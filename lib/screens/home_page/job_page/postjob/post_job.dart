import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/screens/home_page/job_page/postjob/package_page.dart';

import '../../../../resources/color.dart';

class postjob extends StatefulWidget {
  const postjob({super.key});

  @override
  State<postjob> createState() => _postjobState();
}

class _postjobState extends State<postjob> {
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
                    "Post a job ",
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
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      width: 0.5,
                      color: textColor1,),
                      color: Colors.grey[100]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


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
                                  ),
                              ),
                              onChanged: (text){

                              },
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),


                      Text("key skill",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "key skill",
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
                      ),

                      SizedBox(height: 10,),




                      Text("Employment type",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Employment type",
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "District",
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
                      ),


                      SizedBox(height: 10,),


                      Text("Locality",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Locality",
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
                      ),

                      SizedBox(height: 10,),


                      Text("Address",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Address",
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
                      ),

                      SizedBox(height: 10,),


                      Text("Pin Code",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Pin Code",
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
                      ),


                      SizedBox(height: 10,),


                      Text("Email ID",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email ID",
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
                      ),


                      SizedBox(height: 10,),


                      Text("Company name",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Company name",
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
                      ),


                      SizedBox(height: 10,),


                      Text("Monthly salary",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  textAlign: TextAlign.start, // <-- Main change here
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Min",
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
                          ),

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
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  textAlign: TextAlign.start, // <-- Main change here
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Max",
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
                          ),
                        ],
                      ),

                      SizedBox(height: 10,),


                      Text("Experience",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  textAlign: TextAlign.start, // <-- Main change here
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Min",
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
                          ),

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
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: TextField(
                                  textAlign: TextAlign.start, // <-- Main change here
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Max",
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
                          ),
                        ],
                      ),



                      SizedBox(height: 10,),


                      Text("Schedule",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Schedule",
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
                      ),


                      SizedBox(height: 10,),


                      Text("Openings",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Openings",
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
                      ),


                      SizedBox(height: 10,),



                      Text("Education",style: TextStyle(fontSize: 12),),
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Education",
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
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Gender",
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
                      ),


                      SizedBox(height: 10,),


                      Text("Roles and Responsibilities",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),

                      Container(
                        height: 80,

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Roles and Responsibilities",
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
                      ),


                      SizedBox(height: 10,),


                      SizedBox(height: 10,),


                      Text("Job Description",style: TextStyle(fontSize: 12),),
                      SizedBox(height: 10,),

                      Container(
                        height: 80,

                        decoration: BoxDecoration(
                            border: Border.all(
                              color: textColor,
                              width: 0.5,

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              textAlign: TextAlign.start, // <-- Main change here
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Job Description",
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
                      ),


                      SizedBox(height: 20,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  package()),
                          );
                        },
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: bluetext,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Center(child: Text("Next",
                              style: TextStyle(color: bg1,fontSize: 14),)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 50,),


          ],
        ),
      ),


    );
  }
}
