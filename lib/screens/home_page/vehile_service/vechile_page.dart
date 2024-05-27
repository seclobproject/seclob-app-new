import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/color.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../service/service_inner_page.dart';

class vechilepage extends StatefulWidget {
  const vechilepage({super.key});

  @override
  State<vechilepage> createState() => _vechilepageState();
}

class _vechilepageState extends State<vechilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
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
                    "VehiFix",
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
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => serviceinnerpage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 700,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (1.8 / 1),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    padding: EdgeInsets.zero,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            height: 99,
                            width: 180,
                            decoration: BoxDecoration(
                              color: textcolor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/svg/jeep.svg',
                                    // Replace with the path to your asset image
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Car Accessories",
                                    style: TextStyle(
                                      color: bg,
                                      fontSize: 10,
                                    ),
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
              child: Container(
                decoration: BoxDecoration(
                  color: textcolor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 150,
                width: 400,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            "Sample Sample\nContent",
                            style: TextStyle(
                              fontSize: 20,
                              color: textbanner,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Mercedes-Benz, commonly referred to as Mercedes,\nis a German luxury and commercial vehicle\nautomotive brand\nestablished in 1926.",
                            style: TextStyle(
                              fontSize: 5,
                              color: bg,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add some spacing between the text and image
                    Image.asset(
                      'assets/image/women.png',
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: textcolor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 324,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/carbig.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Reasonable Price',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700, color: bg),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Receiving offers through Autobutler\nguarantees your certainty your car.\nfixed if the mechanic.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: bg),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: textcolor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 324,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/carbig.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Reasonable Price',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700, color: bg),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Receiving offers through Autobutler\nguarantees your certainty your car.\nfixed if the mechanic.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: bg),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: textcolor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 324,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/carbig.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Reasonable Price',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700, color: bg),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Receiving offers through Autobutler\nguarantees your certainty your car.\nfixed if the mechanic.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: bg),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
