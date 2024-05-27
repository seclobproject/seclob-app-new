

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../resources/color.dart';

class package extends StatefulWidget {
  @override
  _packageState createState() => _packageState();
}

class _packageState extends State<package> {

  bool _isChecked = false;

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
                    "Package",
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

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[

                            Container(
                              width: 130,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                    width: 0.5,
                                    color: textColor1,)
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(

                                      children: [
                                        Text('Free'),
                                        SizedBox(width: 30,),
                                        Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
                                          ),
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            if (value != null) {
                                              setState(() {
                                                _isChecked = value;
                                              });
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Limited Days",style: TextStyle(color: blue1,fontSize: 10),)),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 5,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: blueshade,
                                      borderRadius: BorderRadius.all(Radius.circular(5,))
                                    ),
                                  ),

                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Normal application",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),


                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Normal application",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),

                                  
                                ],
                              ),
                            ),

                            SizedBox(width: 30,),

                            Container(
                              width: 130,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                    width: 0.5,
                                    color: textColor1,)
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(

                                      children: [
                                        Text('Gold',style: TextStyle(color: gold1),),
                                        SizedBox(width: 30,),
                                        Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
                                          ),
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            if (value != null) {
                                              setState(() {
                                                _isChecked = value;
                                              });
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("₹999",style: TextStyle(color: gold1,fontSize: 10),)),
                                  ),
                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Most Popular",style: TextStyle(color: blue1,fontSize: 10),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("10 Days",style: TextStyle(color: blue1,fontSize: 10),)),
                                  ),

                                  SizedBox(height: 10,),

                                  Container(
                                    height: 5,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: blueshade,
                                        borderRadius: BorderRadius.all(Radius.circular(5,))
                                    ),
                                  ),

                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Normal application",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),


                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Normal application",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Normal application",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),



                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 60,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[

                            Container(
                              width: 130,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                    width: 0.5,
                                    color: textColor1,)
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(

                                      children: [
                                        Text('Gold'),
                                        SizedBox(width: 30,),
                                        Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
                                          ),
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            if (value != null) {
                                              setState(() {
                                                _isChecked = value;
                                              });
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("₹1999",style: TextStyle(fontSize: 10),)),
                                  ),
                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Instant 60 profiles",style: TextStyle(color: blue1,fontSize: 10),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("30 Days",style: TextStyle(color: blue1,fontSize: 10),)),
                                  ),

                                  SizedBox(height: 10,),

                                  Container(
                                    height: 5,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: blueshade,
                                        borderRadius: BorderRadius.all(Radius.circular(5,))
                                    ),
                                  ),
                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Post this job and get\ninstant candidate\nprofileson mail",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Candidates filtered \nbased on your job",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Container(
                                          height: 20,
                                          width: 85,
                                          decoration: BoxDecoration(
                                              color: green,
                                              borderRadius: BorderRadius.all(Radius.circular(5))
                                          ),
                                          child: Center(child: Text("POPULAR PACKAGE",style: TextStyle(fontSize: 6,color: bg1),)),

                                        )
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),

                            SizedBox(width: 30,),

                            Container(
                              width: 130,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                    width: 0.5,
                                    color: textColor1,)
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(

                                      children: [
                                        Text('Platinum',style: TextStyle(color: gold1),),

                                        Checkbox(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
                                          ),
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            if (value != null) {
                                              setState(() {
                                                _isChecked = value;
                                              });
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(" ₹3999",style: TextStyle(color: gold1,fontSize: 10),)),
                                  ),
                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Instant 60 profiles",style: TextStyle(color: blue1,fontSize: 10),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("30 Days",style: TextStyle(color: blue1,fontSize: 10),)),
                                  ),

                                  SizedBox(height: 10,),

                                  Container(
                                    height: 5,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        color: blueshade,
                                        borderRadius: BorderRadius.all(Radius.circular(5,))
                                    ),
                                  ),

                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Unlimited application",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),


                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Adds",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Promotions",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Post this job and get\ninstant candidate\nprofileson mail",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Candidates filtered \nbased on your job",style: TextStyle(fontSize: 9,color: textcolor1),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svg/true.svg',
                                          width: 6,
                                          height: 6,
                                        ),
                                        SizedBox(width: 5,),
                                       Container(
                                         height: 20,
                                         width: 85,
                                         decoration: BoxDecoration(
                                           color: green,
                                           borderRadius: BorderRadius.all(Radius.circular(5))
                                         ),
                                         child: Center(child: Text("POPULAR PACKAGE",style: TextStyle(fontSize: 6,color: bg1),)),

                                       )
                                      ],
                                    ),
                                  ),



                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 40,

                            decoration: BoxDecoration(
                              color: buttoncolor,
                              borderRadius: BorderRadius.all(Radius.circular(10))

                            ),
                            child: Center(child: Text("Submit",style: TextStyle(fontSize: 16,color: bg1),)),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
