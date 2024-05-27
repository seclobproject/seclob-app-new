import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:seclob_pro/screens/home_page/job_page/postjob/post_job.dart';
import '../../../commonpage/searchpage.dart';
import '../../../navigation/app_drawer.dart';
import '../../../resources/color.dart';
import 'employer/job_home.dart';
import 'jobinnerpage.dart';

class job extends StatefulWidget {
  const job({super.key});

  @override
  State<job> createState() => _jobState();
}

class _jobState extends State<job> {
  final ScrollController _scrollController = ScrollController();
  final List<String> items = List.generate(100, (index) => 'Item $index');

  @override
  void initState() {
    super.initState();

    // Start scrolling the ListView automatically
    // _startAutoScroll();
  }

  // void _startAutoScroll() {
  //   Future.delayed(const Duration(seconds: 2), () {
  //     if (_scrollController.hasClients) {
  //       _scrollController.animateTo(
  //         _scrollController.position.maxScrollExtent,
  //         duration: Duration(seconds: 25), // Adjust the duration as needed
  //         curve: Curves.linear,
  //       );
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    // return Scaffold(
    //   backgroundColor: bg,
    //   body: Column(
    //     children: [
    //       SizedBox(height: 10,),
    //       Padding(
    //         padding:
    //         const EdgeInsets.only(top: 45, left: 20,right: 20),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             GestureDetector(
    //               onTap: () {
    //                 _scaffoldKey.currentState?.openDrawer();
    //                 // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
    //               },
    //               child: SvgPicture.asset(
    //                 'assets/svg/drawerblack.svg',
    //                 // Replace with the path to your SVG file
    //                 width: 30,
    //                 height: 30,
    //               ),
    //             ),
    //
    //             SizedBox(width: 12,),
    //             // GestureDetector(
    //             //   onTap: (){
    //             //
    //             //   },
    //             //   child: Container(
    //             //     height: 45,
    //             //     width: 45,
    //             //     decoration: BoxDecoration(
    //             //         color: Colors.white, shape: BoxShape.circle),
    //             //     child: SvgPicture.asset(
    //             //       'assets/svg/logoo.svg',
    //             //       // Replace with the path to your SVG file
    //             //       width: 100, // Set the desired width
    //             //       height: 100, // Set the desired height
    //             //     ),
    //             //   ),
    //             // ),
    //             SizedBox(
    //               width: 50,
    //             ),
    //             Container(
    //               height: 30,
    //               width: 150,
    //               decoration: BoxDecoration(
    //                   color: img_bagground,
    //
    //                   boxShadow: const [
    //                     BoxShadow(
    //                       color: Colors.grey, // shadow color
    //                       blurRadius: 0, // shadow radius
    //                       offset: Offset(0, .1), // shadow offset
    //                       spreadRadius:
    //                       0, // The amount the box should be inflated prior to applying the blur
    //                       // set blur style
    //                     ),
    //                   ],
    //
    //                   borderRadius: BorderRadius.circular(4)),
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric(horizontal: 5),
    //                 child: Row(
    //                   children: [
    //                     SvgPicture.asset(
    //                       'assets/svg/location.svg',
    //                       // Replace with the path to your SVG file
    //                       width: 15,
    //                       height: 15,
    //                     ),
    //                     SizedBox(
    //                       width: 15,
    //                     ),
    //                     Container(
    //                       width: 110,
    //                       child: Text(
    //                         "Palazhi,Kozhikode,67..",
    //                         style: TextStyle(
    //                           fontSize: 12,
    //                           overflow: TextOverflow.ellipsis,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //
    //             SizedBox(width: 10,),
    //             GestureDetector(
    //               onTap: (){
    //                 // Navigator.push(
    //                 //   context,
    //                 //   MaterialPageRoute(builder: (context) =>  emptypage()),
    //                 // );
    //               },
    //               child: Stack(
    //                 children: [
    //
    //                   Container(
    //                     decoration: BoxDecoration(
    //                       shape:BoxShape.circle,
    //                       color: bordergreen,
    //                     ),
    //                     child: Container(
    //                       width: 30,
    //                       height: 30,
    //                       decoration: BoxDecoration(
    //                         shape:BoxShape.circle,
    //                         color: bg,
    //                       ),
    //                       child: Stack(
    //                         children: [
    //                           SvgPicture.asset(
    //                             'assets/svg/ion_notifications-outline.svg',
    //                             // Replace with the path to your SVG file
    //                             width: 30,
    //                             height: 30,
    //                             fit: BoxFit.fill,
    //                           ),
    //                           Container(
    //                             width: 30,
    //                             height: 30,
    //                             alignment: Alignment.topRight,
    //                             margin: EdgeInsets.only(top: 5),
    //                             child: Container(
    //                               width: 12,
    //                               height: 15,
    //                               decoration: BoxDecoration(
    //                                   shape: BoxShape.circle,
    //                                   color: deletecolor,
    //                                   border: Border.all(
    //                                       color: Colors.white, width: 1)),
    //                               child: Padding(
    //                                 padding: const EdgeInsets.all(0.0),
    //                                 child: Center(
    //                                   child: Text(
    //                                     "1",
    //                                     style: TextStyle(fontSize: 7,color: bg),
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(height: 30,),
    //
    //
    //       GestureDetector(
    //         onTap: (){
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) =>  searchpage()),
    //           );
    //         },
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 20),
    //           child: Container(
    //
    //             height: 40,
    //             decoration: BoxDecoration(
    //               color: bg,
    //               borderRadius: BorderRadius.circular(6),
    //               boxShadow: const [
    //                 BoxShadow(
    //                   color: Colors.grey, // shadow color
    //                   blurRadius: 1, // shadow radius
    //                   offset: Offset(0, .7), // shadow offset
    //                   spreadRadius:
    //                   0, // The amount the box should be inflated prior to applying the blur
    //                   // set blur style
    //                 ),
    //               ],
    //             ),
    //
    //             child: Center(
    //                 child: Row(
    //                   children: [
    //                     SizedBox(width: 20,),
    //                     SvgPicture.asset(
    //                       'assets/svg/searchfinal.svg',
    //                       fit: BoxFit.scaleDown,
    //                     ),
    //                     SizedBox(width: 10,),
    //                     Text("Click here to search",style: TextStyle(fontSize: 12),),
    //                   ],
    //                 )),
    //           ),
    //         ),
    //       ),
    //
    //       SizedBox(height: 20,),
    //
    //
    //       Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 5),
    //         child: SizedBox(
    //           height: 140,
    //           child: ListView.builder(
    //             controller: _scrollController,
    //             scrollDirection: Axis.horizontal,
    //             itemCount: 20,
    //             itemBuilder: (context, index) {
    //               return Column(
    //                 children: [
    //                   Padding(
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 5, vertical: 10),
    //                     child: Container(
    //                       height: 100,
    //                       width: 75,
    //                       decoration: BoxDecoration(
    //                           color: bg,
    //                           boxShadow: [
    //                             BoxShadow(
    //                                 color: Colors.grey.shade100,
    //                                 offset: Offset(0, 4),
    //                                 blurRadius: 3)
    //                           ],
    //                           borderRadius:
    //                           BorderRadius.circular(10)),
    //                       child: Center(
    //                         child: Column(
    //                           mainAxisAlignment: MainAxisAlignment.center,
    //                           crossAxisAlignment: CrossAxisAlignment.center,
    //                           children: [
    //                             Padding(
    //                               padding:
    //                               const EdgeInsets.symmetric(
    //                                   vertical: 5),
    //                               child: FloatingActionButton(
    //                                 backgroundColor: buttoncolor,
    //                                 onPressed: () {
    //                                   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => servicepage()));
    //                                 },
    //                                 child: Icon(
    //                                   Icons.train,
    //                                   size: 30,
    //                                   color: Colors.white,
    //                                 ),
    //                               ),
    //                             ),
    //                             Text(
    //                               "Electrician",
    //                               style: TextStyle(
    //                                   fontSize: 10,
    //                                   color: textcolor),
    //                             ),
    //                             SizedBox(height: 15,),
    //
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               );
    //             },
    //           ),
    //         ),
    //       ),
    //
    //
    //       Expanded(
    //         child: ListView.builder(
    //           shrinkWrap: true,
    //           itemCount: 5,
    //           padding: EdgeInsets.symmetric(horizontal: 20),
    //           itemBuilder: (context, index) {
    //             return  Padding(
    //               padding: const EdgeInsets.symmetric(vertical: 8),
    //               child: Container(
    //
    //                 width: 400,
    //                 decoration: BoxDecoration(
    //                     color: greycolor,
    //                     borderRadius: BorderRadius.all(Radius.circular(10))
    //                 ),
    //                 child: Padding(
    //                   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.start,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text("Computer Operator Part Time / Data\nEntry Operator Fresher",
    //                         style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
    //
    //                       SizedBox(height: 5,),
    //
    //                       Text("Seclob Technologies, Cyberpark, Calicut",
    //                         style: TextStyle(fontWeight: FontWeight.w300,fontSize: 13),),
    //                       SizedBox(height: 5,),
    //                       Row(
    //                         children: [
    //                           Container(
    //                             height: 30,
    //                             width: 141,
    //                             decoration: BoxDecoration(
    //                                 color: boxgrey,
    //                                 borderRadius: BorderRadius.all(Radius.circular(10))
    //                             ),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.center,
    //                               children: [
    //                                 SvgPicture.asset(
    //                                   'assets/svg/cash.svg',
    //                                   height:18,
    //                                   width: 18,),
    //
    //                                 Text("₹1000"),
    //                                 SizedBox(width: 5,),
    //                                 Text("₹1000"),
    //                               ],
    //                             ),
    //                           ),
    //                           SizedBox(width: 5,),
    //                           Container(
    //                             height: 30,
    //                             width: 100,
    //                             decoration: BoxDecoration(
    //                                 color: boxgrey,
    //                                 borderRadius: BorderRadius.all(Radius.circular(10))
    //                             ),
    //                             child: Row(
    //                               mainAxisAlignment: MainAxisAlignment.center,
    //                               children: [
    //                                 SvgPicture.asset(
    //                                   'assets/svg/cash.svg',
    //                                   height:18,
    //                                   width: 18,),
    //                                 SizedBox(width: 5,),
    //                                 Text("Full-time"),
    //                               ],
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                       SizedBox(height: 10,),
    //                       Row(
    //                         children: [
    //                           SvgPicture.asset(
    //                             'assets/svg/add.svg',
    //                             height:18,
    //                             width: 18,),
    //                           SizedBox(width: 10,),
    //                           Text("Hiring Multiple candidates",style: TextStyle(color: textgrey1)),
    //                         ],
    //                       ),
    //                       SizedBox(height: 10,),
    //                       Row(
    //                         children: [
    //                           SvgPicture.asset(
    //                             'assets/svg/time2.svg',
    //                             height:18,
    //                             width: 18,),
    //                           SizedBox(width: 10,),
    //                           Text("Urgently Hiring",style: TextStyle(color: textgrey1),),
    //                         ],
    //                       ),
    //                       SizedBox(height: 10,),
    //
    //                       Text("Posted in 10 days to ago,based on jobs you explored",style: TextStyle(fontSize: 11,color: textgray),)
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             );
    //           },
    //         ),
    //       ),
    //
    //
    //
    //
    //       // Padding(
    //       //   padding: const EdgeInsets.symmetric(horizontal: 20),
    //       //   child: Container(
    //       //
    //       //     width: 400,
    //       //     decoration: BoxDecoration(
    //       //       color: greycolor,
    //       //       borderRadius: BorderRadius.all(Radius.circular(10))
    //       //     ),
    //       //     child: Padding(
    //       //       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    //       //       child: Column(
    //       //         mainAxisAlignment: MainAxisAlignment.start,
    //       //         crossAxisAlignment: CrossAxisAlignment.start,
    //       //         children: [
    //       //           Text("Computer Operator Part Time / Data\nEntry Operator Fresher",
    //       //             style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
    //       //
    //       //           SizedBox(height: 5,),
    //       //
    //       //           Text("Seclob Technologies, Cyberpark, Calicut",
    //       //             style: TextStyle(fontWeight: FontWeight.w300,fontSize: 13),),
    //       //           SizedBox(height: 5,),
    //       //           Row(
    //       //             children: [
    //       //               Container(
    //       //                 height: 30,
    //       //                 width: 141,
    //       //                 decoration: BoxDecoration(
    //       //                     color: boxgrey,
    //       //                   borderRadius: BorderRadius.all(Radius.circular(10))
    //       //                 ),
    //       //                 child: Row(
    //       //                   mainAxisAlignment: MainAxisAlignment.center,
    //       //                   children: [
    //       //                     SvgPicture.asset(
    //       //                       'assets/svg/cash.svg',
    //       //                       height:18,
    //       //                     width: 18,),
    //       //
    //       //                     Text("₹1000"),
    //       //                     SizedBox(width: 5,),
    //       //                     Text("₹1000"),
    //       //                   ],
    //       //                 ),
    //       //               ),
    //       //               SizedBox(width: 5,),
    //       //               Container(
    //       //                 height: 30,
    //       //                 width: 100,
    //       //                 decoration: BoxDecoration(
    //       //                     color: boxgrey,
    //       //                     borderRadius: BorderRadius.all(Radius.circular(10))
    //       //                 ),
    //       //                 child: Row(
    //       //                   mainAxisAlignment: MainAxisAlignment.center,
    //       //                   children: [
    //       //                     SvgPicture.asset(
    //       //                       'assets/svg/cash.svg',
    //       //                       height:18,
    //       //                       width: 18,),
    //       //                     SizedBox(width: 5,),
    //       //                     Text("Full-time"),
    //       //                   ],
    //       //                 ),
    //       //               ),
    //       //             ],
    //       //           ),
    //       //           SizedBox(height: 10,),
    //       //           Row(
    //       //             children: [
    //       //               SvgPicture.asset(
    //       //                 'assets/svg/add.svg',
    //       //                 height:18,
    //       //                 width: 18,),
    //       //               SizedBox(width: 10,),
    //       //               Text("Hiring Multiple candidates",style: TextStyle(color: textgrey1)),
    //       //             ],
    //       //           ),
    //       //           SizedBox(height: 10,),
    //       //           Row(
    //       //             children: [
    //       //               SvgPicture.asset(
    //       //                 'assets/svg/time2.svg',
    //       //                 height:18,
    //       //                 width: 18,),
    //       //               SizedBox(width: 10,),
    //       //               Text("Urgently Hiring",style: TextStyle(color: textgrey1),),
    //       //             ],
    //       //           ),
    //       //           SizedBox(height: 10,),
    //       //
    //       //           Text("Posted in 10 days to ago,based on jobs you explored",style: TextStyle(fontSize: 11,color: textgray),)
    //       //         ],
    //       //       ),
    //       //     ),
    //       //   ),
    //       // ),
    //
    //
    //     ],
    //   ),
    // );

    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      // drawer: appdrawer(),
      backgroundColor: bg,
      appBar: AppBar(
        leading: BackButton(color: textColor,),
        title: Row(
          children: [
            Text('Jobs',style: TextStyle(color: textColor),),
            Spacer(),
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
                            width: 15,
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
                  SizedBox(width: 15,),

                   SvgPicture.asset(
                    'assets/svg/drawerblack.svg',
                    // Replace with the path to your SVG file
                    width: 20,
                    height: 20,
                    fit: BoxFit.fill,
                    color: textColor,
                  ),
                  
                  
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 100,
            // ),
            SizedBox(
              height: 10,
            ),


          // OLD APPBAR UI

            // Padding(
            //   padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       GestureDetector(
            //         onTap: () {
            //           _scaffoldKey.currentState?.openDrawer();
            //           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
            //         },
            //         child: SvgPicture.asset(
            //           'assets/svg/drawerblack.svg',
            //           // Replace with the path to your SVG file
            //           width: 30,
            //           height: 30,
            //         ),
            //       ),
            //       SizedBox(
            //         width: 50,
            //       ),
            //       Container(
            //         height: 30,
            //         width: 150,
            //         decoration: BoxDecoration(
            //             color: img_bagground,
            //             boxShadow: const [
            //               BoxShadow(
            //                 color: Colors.grey, // shadow color
            //                 blurRadius: 0, // shadow radius
            //                 offset: Offset(0, .1), // shadow offset
            //                 spreadRadius:
            //                     0, // The amount the box should be inflated prior to applying the blur
            //                 // set blur style
            //               ),
            //             ],
            //             borderRadius: BorderRadius.circular(4)),
            //         child: Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 5),
            //           child: Row(
            //             children: [
            //               SvgPicture.asset(
            //                 'assets/svg/location.svg',
            //                 // Replace with the path to your SVG file
            //                 width: 15,
            //                 height: 15,
            //               ),
            //               SizedBox(
            //                 width: 15,
            //               ),
            //               Container(
            //                 width: 110,
            //                 child: Text(
            //                   "Palazhi,Kozhikode,67..",
            //                   style: TextStyle(
            //                     fontSize: 12,
            //                     overflow: TextOverflow.ellipsis,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       SvgPicture.asset(
            //         'assets/svg/message.svg',
            //         // Replace with the path to your SVG file
            //         width: 15,
            //         height: 15,
            //         fit: BoxFit.fill,
            //       ),
            //       SvgPicture.asset(
            //         'assets/svg/notifification3.svg',
            //         // Replace with the path to your SVG file
            //         width: 20,
            //         height: 20,
            //         fit: BoxFit.fill,
            //       ),
            //     ],
            //   ),
            // ),

            SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => searchpage()),
                  );
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: bg,
                    borderRadius: BorderRadius.circular(6),
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
                  child: Center(
                      child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/svg/searchfinal.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search anything ....",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

// Modified Hero


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 140,
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Container(
                            height: 100,
                            width: 75,
                            decoration: BoxDecoration(
                                color: bg,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade100,
                                      offset: Offset(0, 4),
                                      blurRadius: 3)
                                ],
                                borderRadius:
                                BorderRadius.circular(10)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(
                                        vertical: 5),
                                    child: FloatingActionButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),

                                      ),
                                      backgroundColor: colorgreay,
                                      onPressed: () {
                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => servicepage()));
                                      },
                                      child: Icon(
                                        Icons.train,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Electrician",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: textcolor),
                                  ),
                                  SizedBox(height: 15,),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => jobinnerpage()));
              },
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                          color: greycolor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 22,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: jobcolor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/boostbtn.svg',
                                    fit: BoxFit.scaleDown,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Boosted',
                                    style: TextStyle(fontSize: 9, color: bg1),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Computer Operator Part Time / Data\nEntry Operator Fresher",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Seclob Technologies, Cyberpark, Calicut",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 13),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: 141,
                                  decoration: BoxDecoration(
                                      color: boxgrey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/cash.svg',
                                        height: 18,
                                        width: 18,
                                      ),
                                      Text("₹1000"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("-"),
                                      SizedBox(
                                        width: 5,
                                      ),

                                      Text("₹1000"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: boxgrey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svg/cash.svg',
                                        height: 18,
                                        width: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Full-time"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/add.svg',
                                  height: 18,
                                  width: 18,
                                  color: blue1,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Hiring Multiple candidates",
                                    style: TextStyle(color: textgrey1)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/time2.svg',
                                  height: 18,
                                  width: 18,
                                  color: blue1,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Urgently Hiring",
                                  style: TextStyle(color: textgrey1),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Posted in 10 days to ago,based on jobs you explored",
                              style: TextStyle(fontSize: 11, color: textgray),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CarouselSlider.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        'https://media.istockphoto.com/id/1399204533/vector/mega-sale-special-offer-neon-10-off-sale-banner-sign-board-promotion-vector-illustration.jpg?s=612x612&w=0&k=20&c=zLKXFGLhCbQWEiMicFeEEopzrCieWOvY-JNWjzGGlKs=',
                        fit: BoxFit.fill),
                  );
                },
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  aspectRatio: 10 / 15,
                  viewportFraction: 1,
                  autoPlay: true,
                  // enlargeCenterPage: true,
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
      


    // Post job & Employer

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // bottomNavigationBar: Container(
      //   height: 100,
      //   decoration: BoxDecoration(
      //     color: backgroundpro,
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Container(
      //                 width: 190,
      //                 height: 47,
      //                 child: ElevatedButton(
      //                   onPressed: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) => postjob()),
      //                     );
      //                   },
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       SvgPicture.asset(
      //                         'assets/svg/jobicon.svg',
      //                         height: 15,
      //                         width: 15,
      //                       ),
      //                       SizedBox(
      //                         height: 3,
      //                       ),
      //                       const Text('Post a job',
      //                           style: TextStyle(fontSize: 10)),
      //                     ],
      //                   ),
      //                   style: ElevatedButton.styleFrom(
      //                     backgroundColor: bordergreen,
      //                     shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: 5,
      //               ),
      //               Container(
      //                 width: 125,
      //                 height: 47,
      //                 child: ElevatedButton(
      //                   onPressed: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) => jobhome()),
      //                     );
      //                   },
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       SvgPicture.asset(
      //                         'assets/svg/searchemploye.svg',
      //                         height: 18,
      //                         width: 18,
      //                       ),
      //                       SizedBox(
      //                         height: 3,
      //                       ),
      //                       const Text(
      //                         'Employer',
      //                         style: TextStyle(fontSize: 10),
      //                       ),
      //                     ],
      //                   ),
      //                   style: ElevatedButton.styleFrom(
      //                     backgroundColor: bordergreen,
      //                     shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(10),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
