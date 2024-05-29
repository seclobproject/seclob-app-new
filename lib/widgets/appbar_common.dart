import 'package:flutter/material.dart';
import 'package:seclob_pro/resources/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobAppbar extends StatelessWidget implements PreferredSizeWidget {
  const JobAppbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Adjust height as needed

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: BackButton(
          color: colorwhite,
        ),
        title: Row(
          children: [
            Text(
              'Jobs',
              style: TextStyle(color: colorwhite),
            ),
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
            SizedBox(
              width: 15,
            ),
            SvgPicture.asset(
              'assets/svg/drawerblack.svg',
              // Replace with the path to your SVG file
              width: 20,
              height: 20,
              fit: BoxFit.fill,
              color: colorwhite,
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[gradient1, gradient2]),
          ),
        ),
      );
    
  }
}