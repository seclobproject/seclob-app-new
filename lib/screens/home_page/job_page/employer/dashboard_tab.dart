import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../resources/color.dart';

class dashboardtab extends StatefulWidget {
   dashboardtab({super.key});

  @override
  State<dashboardtab> createState() => _dashboardtabState();
}

class _dashboardtabState extends State<dashboardtab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 520,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => vechilepage()));
                },
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    childAspectRatio: (2.1 / 1.5),
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                  ),
                  // padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            color: buttoncolor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/svg/carbig.svg',
                                  // Replace with the path to your asset image
                                  width: 30,
                                  height: 30,
                                ),
                                Text(
                                  "2433 Active",
                                  style: TextStyle(
                                      color: bg, fontSize: 10),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),



         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Divider(
             thickness: 5,
             color: chipcolor,
           ),
         ),

          SizedBox(height: 20,),



          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Container(
          //     height: 400,
          //     width: 200,
          //     decoration: BoxDecoration(
          //         color: chipcolor,
          //         borderRadius: BorderRadius.all(Radius.circular(10))),
          //     child: PieChart(
          //       PieChartData(
          //         sectionsSpace: 5,
          //         centerSpaceRadius: 40,
          //         sections: [
          //           PieChartSectionData(
          //             color: Colors.blue,
          //             value: 45,
          //             title: 'Sunday',
          //             radius: 80,
          //           ),
          //           PieChartSectionData(
          //             color: Colors.green,
          //             value: 40,
          //             title: 'Mon',
          //             radius: 80,
          //           ),
          //           PieChartSectionData(
          //             color: Colors.orange,
          //             value: 50,
          //             title: 'Tue',
          //             radius: 80,
          //           ),
          //
          //           PieChartSectionData(
          //             color: Colors.red,
          //             value: 50,
          //             title: 'Wed',
          //             radius: 80,
          //           ),
          //
          //           PieChartSectionData(
          //             color: Colors.yellow,
          //             value: 50,
          //             title: 'Thu',
          //             radius: 80,
          //           ),
          //           PieChartSectionData(
          //             color: Colors.purple,
          //             value: 50,
          //             title: 'Fri',
          //             radius: 80,
          //           ),
          //           PieChartSectionData(
          //             color: Colors.deepPurple,
          //             value: 50,
          //             title: 'Sat',
          //             radius: 80,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          SizedBox(height: 50,),





        ],
      ),
    );
  }
}

