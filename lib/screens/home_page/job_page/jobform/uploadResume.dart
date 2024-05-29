import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/contact_information.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/experience_details.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/experience_page.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/questions.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';
import 'package:seclob_pro/widgets/application_progress.dart';

import '../../../../resources/color.dart';
import 'personal_details.dart';

class uploadresume extends StatefulWidget {
  const uploadresume({super.key});

  @override
  State<uploadresume> createState() => _uploadresumeState();
}

class _uploadresumeState extends State<uploadresume> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: JobAppbar(),
      body: Column(
        children: [

          SizedBox(height: 20,),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Text("Add a resume for your details",
                    style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w600,
                    color: buttonGreen),),
            
                  SizedBox(height: 35,),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Container(
                      height: 43,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            width: 0.5,
                            color: textColor1,)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("Upload resume (doc/pdf)",style: TextStyle(fontSize:11 ,color: textcolor1),),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: buttonGreen,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            width: 80,
                            height: 43,
                            child: Center(child: Text("Choose file",style: TextStyle(fontSize: 9,color: Colors.white),)),
            
                          ),
                        ],
                      ),
                    ),
                  ),
            
                  SizedBox(height: 30,),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionsScreen()),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 85,
                                decoration: BoxDecoration(
                                  color: blue1,
                                    border: Border.all(color: bordercolor),
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Center(child: Text("Continue",style: TextStyle(fontSize: 10,color: bg1),)),
                              ),
                            ),
                      ],
                    ),
                  ),



                  SizedBox(height: 400,),
                ProgressBar(stepVal: 2)

                
            
                ],
              ),
            ),
          ),
          

        ],
      ),
      
    );
  }
}
