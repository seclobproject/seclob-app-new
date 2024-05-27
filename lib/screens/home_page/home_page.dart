import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:seclob_pro/screens/home_page/service/service_inner_page.dart';
import 'package:seclob_pro/screens/home_page/service/service_page.dart';
import 'package:seclob_pro/screens/home_page/vehile_service/vechile_page.dart';
import '../../authentication_page/login_page.dart';
import '../../commonpage/emptypage.dart';
import '../../commonpage/searchpage.dart';
import '../../navigation/app_drawer.dart';
import '../../navigation/test.dart';
import '../../resources/color.dart';
import '../../resources/color.dart';
import 'job_page/job.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {



    int _calculateCrossAxisCount(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;
      final screenHeight = MediaQuery.of(context).size.height;
      return screenWidth > screenHeight ? 5 : 4; // Adjust the count as needed
    }

    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      drawer: appdrawer(),
      backgroundColor: bg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 100,
            // ),
            SizedBox(height: 10,),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState?.openDrawer();
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
                    },
                    child: SvgPicture.asset(
                      'assets/svg/drawerblack.svg',
                      // Replace with the path to your SVG file
                      width: 30,
                      height: 30,
                    ),
                  ),

                  SizedBox(width: 12,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/svg/logoo.svg',
                        // Replace with the path to your SVG file
                        width: 100, // Set the desired width
                        height: 100, // Set the desired height
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
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

                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  job()),
                      );
                    },
                    child: Stack(
                     children: [

                       Container(
                         decoration: BoxDecoration(
                           shape:BoxShape.circle,
                           color: bordergreen,
                         ),
                         child: Container(
                           width: 30,
                           height: 30,
                           decoration: BoxDecoration(
                             shape:BoxShape.circle,
                             color: bg,
                           ),
                           child: Stack(
                             children: [
                               SvgPicture.asset(
                                 'assets/svg/ion_notifications-outline.svg',
                                 // Replace with the path to your SVG file
                                 width: 30,
                                 height: 30,
                                 fit: BoxFit.fill,
                               ),
                               Container(
                                 width: 30,
                                 height: 30,
                                 alignment: Alignment.topRight,
                                 margin: EdgeInsets.only(top: 5),
                                 child: Container(
                                   width: 12,
                                   height: 15,
                                   decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: deletecolor,
                                       border: Border.all(
                                           color: Colors.white, width: 1)),
                                   child: Padding(
                                     padding: const EdgeInsets.all(0.0),
                                     child: Center(
                                       child: Text(
                                         "1",
                                         style: TextStyle(fontSize: 7,color: bg),
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],

                    ),
                  ),
                ],
              ),
            ),


            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  searchpage()),
                );
              },
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 40,),
                child: Container(
                  width: 334,
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
                          SizedBox(width: 20,),
                          SvgPicture.asset(
                            'assets/svg/searchfinal.svg',
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(width: 10,),
                          Text("Click here to search",style: TextStyle(fontSize: 12),),
                        ],
                      )),
                ),
              ),
            ),




            SizedBox(
              height: 20,
            ),

            Text('test'),

            SizedBox(
              height: 20,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   gradient: LinearGradient(
                //     colors: [
                //       Color.fromRGBO(15, 63, 84, 1),
                //       Color.fromRGBO(5, 120, 190, 1),
                //     ],
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight,
                //   ),
                //   boxShadow: [
                //     BoxShadow(
                //       color: Colors.black12,
                //       offset: Offset(5, 5),
                //       blurRadius: 10,
                //     ),
                //   ],
                // ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 16,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                        crossAxisCount: 4,
                        childAspectRatio: (2.2 / 3),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                        padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              // height: 50,
                              // width: 90,
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
                                        backgroundColor: buttoncolor,
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => servicepage()));
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
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),


            SizedBox(
              height: 10,
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

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/offerbg.svg',
                          // Replace with the path to your asset image
                          height: 68,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/svg/offerpurpple.svg',
                    // Replace with the path to your asset image
                    height: 68,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: greybg,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Vehicle Services",
                          style: TextStyle(fontSize: 18, color: textcolor),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => vechilepage()));
                      },
                      child: SizedBox(
                        height: 230,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 0,
                          ),
                          padding: EdgeInsets.zero,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 110,
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
                                          'assets/svg/jeep.svg',
                                          // Replace with the path to your asset image
                                          width: 30,
                                          height: 30,
                                        ),
                                        Text(
                                          "Car Accessories",
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: greybg,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Home Maintanance",
                          style: TextStyle(fontSize: 18, color: textcolor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        color: appcolor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://plus.unsplash.com/premium_photo-1664299941780-e8badc0b1617?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uc3RydWN0aW9uJTIwd29ya2VyfGVufDB8fDB8fHww&w=1000&q=80',
                                          width: 300,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.3),
                                          // Change opacity as needed
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 35,
                                        bottom: 10,
                                        child: Text(
                                          "Painter",
                                          style: TextStyle(
                                              fontSize: 14, color: bg),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              color: greybg,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Store",
                          style: TextStyle(fontSize: 18, color: textcolor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 25),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        color: appcolor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://www.thechennaimobiles.com/image/cache/catalog/140375-600x600.jpg',
                                          width: 300,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        decoration: BoxDecoration(
                                          color: bordergreen,
                                          // Change opacity as needed
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Y15s",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    "23000/-",
                                                    style: TextStyle(
                                                      color: textyellow,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Center(
                                                  child: Text(
                                                    "23000/-",
                                                    style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.white,
                                                      fontSize: 8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: greyhome),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          "Most Used Services",
                          style: TextStyle(fontSize: 18, color: textcolor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 140,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: bg,
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
                                                      vertical: 10),
                                              child: FloatingActionButton(
                                                backgroundColor: bg,
                                                onPressed: () {},
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
                                                width:60,
                                                child: Text(
                                                  overflow: TextOverflow.ellipsis,
                                                  "Seclob Service at Kochi",
                                                  style: TextStyle(
                                                    fontSize: 8,
                                                    color: textcolor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 2,),
                                            Positioned(
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 8,
                                                    horizontal: 12),
                                                decoration: BoxDecoration(
                                                  color: bordergreen,
                                                  // Change opacity as needed
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Column(
                                                  children: [
                                                    Center(
                                                      child: Text(
                                                        "20 minutes ago",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 6,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              color: greybg,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Eats",
                          style: TextStyle(fontSize: 18, color: textcolor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 25),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        color: appcolor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://www.thechennaimobiles.com/image/cache/catalog/140375-600x600.jpg',
                                          width: 300,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        decoration: BoxDecoration(
                                          color: bordergreen,
                                          // Change opacity as needed
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Text(
                                                "Y15s",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Center(
                                                  child: Text(
                                                    "23000/-",
                                                    style: TextStyle(
                                                      color: textyellow,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Center(
                                                  child: Text(
                                                    "23000/-",
                                                    style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.white,
                                                      fontSize: 8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: greybg,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Jobs",
                          style: TextStyle(fontSize: 18, color: textcolor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        color: appcolor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network(
                                          'https://plus.unsplash.com/premium_photo-1664299941780-e8badc0b1617?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29uc3RydWN0aW9uJTIwd29ya2VyfGVufDB8fDB8fHww&w=1000&q=80',
                                          width: 300,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.3),
                                          // Change opacity as needed
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 35,
                                        bottom: 10,
                                        child: Text(
                                          "Painter",
                                          style: TextStyle(
                                              fontSize: 14, color: bg),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}



