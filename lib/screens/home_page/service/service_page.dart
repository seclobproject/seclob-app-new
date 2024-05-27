import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/screens/home_page/service/service_inner_page.dart';
import '../../../resources/color.dart';


class servicepage extends StatefulWidget {
  const servicepage({super.key});

  @override
  State<servicepage> createState() => _servicepageState();
}

class _servicepageState extends State<servicepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        children: <Widget>[

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
                  "Service",
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
                SvgPicture.asset(
                  'assets/svg/filtter.svg',
                  // Replace with the path to your SVG file
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: textColor,
                        width: .5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(3),
                    child: SvgPicture.asset(
                      'assets/svg/searchfinal.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),

              ],
            ),
          ),

          Expanded(
            // This Expanded widget will make sure the ListView takes the remaining space
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, sectionIndex) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Home Maintenance",
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => serviceinnerpage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: SizedBox(
                          height: 120,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            // Set the scroll direction to horizontal
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4),
                                            child: Container(
                                              height: 110,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: bg,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: togglebg,
                                                      // unit is some relative part of the canvas width
                                                      offset: Offset(.5, .5),
                                                      blurRadius: 2,
                                                    ),
                                                    BoxShadow(
                                                      color: togglebg,
                                                      offset: Offset(.5, .5),
                                                      blurRadius: 2,
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 10),
                                                      child: FloatingActionButton(
                                                        backgroundColor: bg,
                                                        onPressed: () {
                                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => serviceinnerpage()));
                                                        },
                                                        child: Icon(
                                                          Icons.train,
                                                          size: 35,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Electrician",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: textcolor),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.center,
                                                      child: Container(
                                                        width: 60,
                                                        child: Text(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          "Seclob Service at Kochi",
                                                          style: TextStyle(
                                                            fontSize: 8,
                                                            color: textcolor,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 2,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 5), // Add spacing between items
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

