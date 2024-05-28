import 'package:flutter/material.dart';
import 'package:seclob_pro/resources/color.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/experience_details.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';

class ContactInformation extends StatefulWidget {
  const ContactInformation({super.key});

  @override
  State<ContactInformation> createState() => _ContactInformationState();
}

class _ContactInformationState extends State<ContactInformation> {
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
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text("Add your contact information",
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: buttonGreen),),
                    ),
              
                    SizedBox(height: 10,),
              
              
                    Text("Name",style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
              
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
                              hintText: "Enter your name ....",
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
              
                    Text("Email",style: TextStyle(fontSize: 12),),
                    SizedBox(height: 5,),
              
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
                              hintText: "Enter your email ...",
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

            SizedBox(height: 30,)
          ],
        ),
      ),

    );
  }
}