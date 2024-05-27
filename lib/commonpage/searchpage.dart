import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/color.dart';

class searchpage extends StatefulWidget {
  const searchpage({super.key});

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  width: 20,
                ),
                Text(
                  "Search",
                  style: TextStyle(fontSize: 16),
                ),

              ],
            ),
          ),

          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20,),
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
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search anything....',
                  suffixStyle:
                  TextStyle(fontSize: 8, color: Colors.grey),
                  prefixIcon: GestureDetector(
                    onTap: () {
                      // Handle the search action here
                    },
                    child: SvgPicture.asset(
                      'assets/svg/searchfinal.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

