import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../resources/color.dart';
import 'jobform/personal_details.dart';

class uploadresume extends StatefulWidget {
  const uploadresume({super.key});

  @override
  State<uploadresume> createState() => _uploadresumeState();
}

class _uploadresumeState extends State<uploadresume> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  width: 0.5,
                  color: textColor1,)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text("Add a resume for your details",
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w600,
                      color: buttoncolor),),

                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Container(
                        height: 30,
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
                                color: buttoncolor,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              width: 80,
                              height: 30,
                              child: Center(child: Text("Choose file",style: TextStyle(fontSize: 9,color: Colors.white),)),

                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.5,
                                  color: bordercolor),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            child: Center(child: Text("Build a Resume",style: TextStyle(fontSize: 10),)),
                          ),

                          SizedBox(width: 10,),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => personaldetails()),
                              );
                            },
                            child: Container(
                              height: 30,
                              width: 75,
                              decoration: BoxDecoration(
                                color: bordergreen,
                                  border: Border.all(color: bordercolor),
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                              ),
                              child: Center(child: Text("Next",style: TextStyle(fontSize: 10,color: bg1),)),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
