import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/commonpage/searchpage.dart';
import '../../../../resources/color.dart';

class jobtab extends StatefulWidget {
   jobtab({super.key});

  @override
  State<jobtab> createState() => _jobtabState();
}

class _jobtabState extends State<jobtab> {

  String dropdownvalue = ' Posting Date';

  bool jobStatus = true;

  var items =  [' Posting Date','Pending','Rejected'];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: bluetext,
                      ),
                      child: Text("Open and Paused", style: TextStyle(fontSize: 12, color: Colors.white),),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[400],
                      ),
                      child: Text("Closed", style: TextStyle(fontSize: 12,color: Colors.black),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                  // Search bar

                  Padding(
              padding: const EdgeInsets.only(left:5 ,right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => searchpage()),
                  );
                },
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: bg,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey, // shadow color
                        blurRadius: 1, // shadow radius
                        offset: Offset(0, .7), // shadow offset
                        spreadRadius:
                            0, // The amount the box should be inflated prior to applying the blur
                        // set blur style
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal :8.0),
                    child: Center(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Filter and search job",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/svg/searchfinal.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ),



                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: lightbg,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5),
                          child: DropdownButton(
                            elevation: 0,
                            value: dropdownvalue,
                            icon: Icon(Icons.keyboard_arrow_down),
                            items: items.map((String item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: TextStyle(color: Colors.grey, fontSize: 10), // Set text color to black
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 195,
                      width: 344,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: textcolor1
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Text("Personal Assistant",style: TextStyle(fontSize: 15),),
                            SizedBox(height: 5,),
                            Text("Calicut , Kerala",style: TextStyle(fontSize: 10),),
                            SizedBox(height: 5,),
                            Text("Posted : 11 kaizerrhjkkk 2023",style: TextStyle(fontSize: 10),),

                            SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: textcolor1
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(child: Text("37 Active",style: TextStyle(fontSize: 8),)),
                                ),

                                Container(
                                  height: 20,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: textcolor1
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(child: Text("37 Waiting",style: TextStyle(fontSize: 8))),
                                ),

                                Container(
                                  height: 20,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: textcolor1
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(child: Text("0 Contacting",style: TextStyle(fontSize: 8))),
                                ),

                                Container(
                                  height: 20,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: textcolor1
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(child: Text("0 to 5 Hired",style: TextStyle(fontSize: 8))),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),

                            Text("Sponsor Job",style: TextStyle(fontSize: 14,color: gold),),
                            SizedBox(height: 5,),
                            Text("Get more candidates by sponsoring",style: TextStyle(fontSize: 12,color: greytext),),

                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: greytext
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(5))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(100))
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Open",style: TextStyle( color: Colors.green,),)
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),



        ],
      ),
    );
  }
}
