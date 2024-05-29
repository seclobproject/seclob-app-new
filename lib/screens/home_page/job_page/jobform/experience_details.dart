import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/color.dart';
import 'job_details.dart';

class experiencedetails extends StatefulWidget {
  const experiencedetails({super.key});

  @override
  State<experiencedetails> createState() => _experiencedetailsState();
}

class _experiencedetailsState extends State<experiencedetails> {

  int selectedChip = 0;
  List<String> options = ['Experienced', 'Fresher', 'Student','Freelancer'];

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

                      SizedBox(height: 10,),
                      Wrap(
                        spacing: 12,
                        children: List<Widget>.generate(
                          options.length,
                              (int index) {
                            return ChoiceChip(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: bordercolor),
                              ),
                              selectedColor: blue,
                              backgroundColor: Colors.white,
                              avatar: SizedBox(
                                height: 15,
                                child: CircleAvatar(
                                  backgroundColor: textcolor1,
                                  child: Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                        color: bg1,
                                        borderRadius: BorderRadius.all(Radius.circular(100))
                                    ),
                                  ),
                                ),
                              ),
                              label: Text(
                                options[index],
                                style: TextStyle(
                                  color: selectedChip == index ? Colors.white : textColor, // Change text color when selected
                                  fontSize: 10,
                                ),
                              ),
                              selected: selectedChip == index,
                              onSelected: (bool selected) {
                                setState(() {
                                  selectedChip = selected ? index : -1;
                                });
                              },
                            );
                          },
                        ).toList(),
                      ),

                      SizedBox(height: 10,),

                      Visibility(
                        visible: selectedChip == 0,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Company Name ",style: TextStyle(fontSize: 12),),

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
                                      hintText: "Company Name ",
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

                            Text("Employer Location",style: TextStyle(fontSize: 12),),
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
                                      hintText: "Employer Location",
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

                            Text("Company Designation",style: TextStyle(fontSize: 12),),
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
                                      hintText: "Company Designation",
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

                            Text("Roles",style: TextStyle(fontSize: 12),),
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
                                      hintText: "Roles",
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

                            Text("From",style: TextStyle(fontSize: 12),),
                            SizedBox(height: 10,),


                            Row(
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

                                SizedBox(width:10 ,),

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
                              ],
                            ),



                            SizedBox(height: 10,),

                            Text("To",style: TextStyle(fontSize: 12),),
                            SizedBox(height: 10,),


                            Row(
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

                                SizedBox(width:10 ,),

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
                              ],
                            ),


                            CheckboxListTile(
                              activeColor: textcolor,
                              value: _checkbox,
                              onChanged: (value) {
                                setState(() => _checkbox = !_checkbox);},
                              title: const Text('I am currently working here', style: TextStyle(color: Colors.black,fontSize: 14),),
                            )

                          ],
                        ),

                      ),

                      Visibility(
                        visible: selectedChip == 2,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Education Level",style: TextStyle(fontSize: 12),),

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
                                      hintText: "Education Level",
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

                            Text("University / School",style: TextStyle(fontSize: 12),),
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
                                      hintText: "University / School",
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

                            Text("Degree",style: TextStyle(fontSize: 12),),
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
                                      hintText: "Degree",
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

                            Text("From",style: TextStyle(fontSize: 12),),
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

                            Text("Specialization",style: TextStyle(fontSize: 12),),
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
                                      hintText: "Specialization",
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

                          ],
                        ),

                      ),




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
                            MaterialPageRoute(builder: (context) => const jobdetails()),
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
          ],
        ),
      ),

    );
  }
}


