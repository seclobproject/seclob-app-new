import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:seclob_pro/resources/color.dart';

class ExperienceModal extends StatefulWidget {
  const ExperienceModal({super.key});

  @override
  State<ExperienceModal> createState() => _ExperienceModalState();
}

class _ExperienceModalState extends State<ExperienceModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                    backgroundColor: greybackground,
                    scrollable: true,
                    title: Text('Relevant experience',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                      "Company Name",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                              hintText: "Enter your  Companyname....",
                              hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontSize: 12)),
                          onChanged: (text) {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Job Title",
                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                              hintText: "Enter your  Job Title....",
                              hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontSize: 12)),
                          onChanged: (text) {},
                        ),
                      ),
                    ),
                    
                          ],
                        ),
                      ),
                    ),
                     actions: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: Row(
                          
                          children: [
                            GestureDetector(
                              onTap: (){
                        
                            Navigator.pop(context);
                          },
                        
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: buttoncolor,width: 1.5)
                                ),
                                child: Center(
                                    child: Text("Cancel",style: TextStyle(fontSize: 15,color: buttoncolor,fontWeight: FontWeight.w500),)),
                              ),
                        
                            ),
                            SizedBox(width: 20,),
                            Spacer(),
                            GestureDetector(
                                  onTap: (){
                            
                                Navigator.pop(context);
                              },
                            
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: buttoncolor,
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Center(
                                        child: Text("Done",style: TextStyle(fontSize: 15,color: bg1),)),
                                  ),
                            
                                ),
                          ],
                        ),
                      ),
                    ],
                  );
  }
}