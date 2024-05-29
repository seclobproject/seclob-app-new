import 'package:flutter/material.dart';
import 'package:seclob_pro/resources/color.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';

class ApplicationOverview extends StatefulWidget {
  const ApplicationOverview({super.key});

  @override
  State<ApplicationOverview> createState() => _ApplicationOverviewState();
}

class _ApplicationOverviewState extends State<ApplicationOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JobAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "Computer Operator Part Time / Data Entry Operator Fresher",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)
                    )
                    ,
                      SizedBox(height: 10),
                    Text(
                      "Seclob Technologies Pvt.Ltd,  ,Cyberpark, Calicut",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: buttonGreen)
                    ),
                    SizedBox(height: 20,)
                  ]),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Job title", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Icon(Icons.edit,color: buttonGreen,size: 15,),
                        SizedBox(width: 2,),
                        Text("Edit",style: TextStyle(color: buttonGreen),),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: [
                          SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          "Full name",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
                        )
                        ,
                        SizedBox(height: 2),
                        Text(
                          "applicant name",
                          style: TextStyle(fontSize: 15)
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Phone number",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
                        )
                        ,
                        SizedBox(height: 2),
                        Text(
                          "9726781011",
                          style: TextStyle(fontSize: 15)
                        ),
                        SizedBox(height: 20,)
                      ]),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          "Email address",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
                        )
                        ,
                        SizedBox(height: 2),
                        Text(
                          "test@gmail.com",
                          style: TextStyle(fontSize: 15)
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "State, District",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
                        )
                        ,
                        SizedBox(height: 2),
                        Row(
                          children: [
                            Text(
                              "Kerala ,",
                              style: TextStyle(fontSize: 15)
                            ),
                            Text(
                              "palakkad",
                              style: TextStyle(fontSize: 15)
                            ),
                          ],
                        ),
                        SizedBox(height: 20,)
                      ]),
                      SizedBox(width: 20,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Resume", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Icon(Icons.edit,color: buttonGreen,size: 15,),
                        SizedBox(width: 2,),
                        Text("Edit",style: TextStyle(color: buttonGreen),),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      
                      Text("filename.docx"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Questions from ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Text("Seclob", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Icon(Icons.edit,color: buttonGreen,size: 15,),
                        SizedBox(width: 2,),
                        Text("Edit",style: TextStyle(color: buttonGreen),),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Will you be able to reliably commute or relocate to Hilite Business Park, Calicut, Kerala for this job?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),
                      Text("Yes, I am planning to relocate ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                      SizedBox(height: 10,),
                      Text("How many years of total work experience do you have?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),
                      Text("2", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                      
                    ],
                  ),
                ),
              ),
        
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Relevant Experience ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Icon(Icons.edit,color: buttonGreen,size: 15,),
                        SizedBox(width: 2,),
                        Text("Edit",style: TextStyle(color: buttonGreen),),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Company name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                      SizedBox(height: 10,),
                      Text("Job title", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Supporting documents", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Icon(Icons.edit,color: buttonGreen,size: 15,),
                        SizedBox(width: 2,),
                        Text("Edit",style: TextStyle(color: buttonGreen),),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("No cover letter or additional documents included (optional)", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              GestureDetector(
                              onTap: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => ApplicationOverview()),
                                // );
                              },
                              child: Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: blue1,
                                    border: Border.all(color: bordercolor),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Text("Submit your application",style: TextStyle(fontSize: 10,color: bg1),)),
                              ),
                            ),
              
            ],
          ),
        ),
      ),
    );
  }
}
