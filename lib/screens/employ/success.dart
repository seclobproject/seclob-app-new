import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/color.dart';

class Application3 extends StatefulWidget {
  const Application3({super.key});

  @override
  State<Application3> createState() => _Application3State();
}

class _Application3State extends State<Application3> {
  int? _selectedValue;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double progress = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Jobs",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: screenWidth * 0.1,
            ),
            Container(
              height: screenHeight * 0.04,
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
                color: img_bagground,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0,
                    offset: Offset(0, .1),
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/location.svg',
                      width: screenWidth * 0.04,
                      height: screenHeight * 0.02,
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Container(
                      width: screenWidth * 0.25,
                      child: const Text(
                        "Palazhi,Kozhikode,67..",
                        style: TextStyle(
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff034B76),
                Color(0xff0578BE)
              ], // Adjust the colors as needed
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, vertical: screenHeight * 0.03),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Questions from Seclob Technologies',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth * 0.045,
                  color: const Color(0xff2CB070),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Text(
              'Will you be able to reliably commute or relocate to Calicut, for this job?',
              style: TextStyle(
                  fontSize: screenWidth * 0.035, fontWeight: FontWeight.w500),
            ),
            ListTile(
              title: const Text('Yes, I can make the commute'),
              leading: Radio<int>(
                value: 1,
                groupValue: _selectedValue,
                onChanged: _handleRadioValueChange,
              ),
            ),
            ListTile(
              title: const Text('Yes, I am planning to relocate'),
              leading: Radio<int>(
                value: 2,
                groupValue: _selectedValue,
                onChanged: _handleRadioValueChange,
              ),
            ),
            ListTile(
              title: const Text('Yes, but I need relocation assistance'),
              leading: Radio<int>(
                value: 3,
                groupValue: _selectedValue,
                onChanged: _handleRadioValueChange,
              ),
            ),
            ListTile(
              title: const Text('No'),
              leading: Radio<int>(
                value: 4,
                groupValue: _selectedValue,
                onChanged: _handleRadioValueChange,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              'Will you be able to reliably commute or relocate to Calicut, for this job?',
              style: TextStyle(
                  fontSize: screenWidth * 0.035, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.01,
                    horizontal: screenWidth * 0.04),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffCFCFCF)),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 38,
                  width: 86,
                  decoration: BoxDecoration(
                      color: Color(0xff09437F),
                      borderRadius: BorderRadiusDirectional.circular(10)),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Stack(children: [
              Container(
                width: progress,
                height: 5,
                decoration: BoxDecoration(
                    color: Color(0xffB5B5B5),
                    borderRadius: BorderRadius.circular(3)),
              ),
              Container(
                width: (progress / 5) * 4,
                height: 5,
                decoration: BoxDecoration(
                    color: green, borderRadius: BorderRadius.circular(3)),
              ),
            ])
          ],
        ),
      ),
    );
  }
}