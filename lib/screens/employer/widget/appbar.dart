import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/color.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 28,)),
            Text(
              'Jobs',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: Colors.white),
            ),
          ],
        ),

        // GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child:
        //   SvgPicture.asset(
        //     'assets/svg/back.svg',
        //     // Replace with the path to your SVG file
        //     width: 20,
        //     height: 20,
        //   ),
        // ),
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
          child: Row(
            children: [
              SizedBox(width: 5,),
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
      ],
    );
  }
}
