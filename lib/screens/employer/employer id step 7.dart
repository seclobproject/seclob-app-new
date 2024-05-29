import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:seclob_pro/screens/employer/widget/appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/screens/home_page/job_page/jobform/success_screen.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';

import '../../resources/color.dart';
import 'employe id step 4.dart';

class Employer_id7 extends StatefulWidget {
  const Employer_id7({super.key});

  @override
  State<Employer_id7> createState() => _Employer_id7State();
}

class _Employer_id7State extends State<Employer_id7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JobAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Edit the job post',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2CB070)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 94,
              decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Data Entry Operator Fresher',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/svg/editbutton.svg',
                          // Replace with the path to your SVG file
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Seclob Technologies Pvt.Ltd',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/svg/editbutton.svg',
                          // Replace with the path to your SVG file
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Cyberpark, Calicut',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/svg/editbutton.svg',
                          // Replace with the path to your SVG file
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Job details',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 404,
              decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Pay',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          'Rs.8,500.29 - Rs.33,740.12 per month',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Job Type',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          'Contractual / Temporary\nVolunteer',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Number of openings for this position',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Expected start date',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/svg/editbutton.svg',
                          // Replace with the path to your SVG file
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Benefits',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          'Internet reimbursement',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Settings',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
            Text(
              'The following information will not be shared on your job post.',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 536,
              decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Application settings',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Apply method',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 Email',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Resume required',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 Optional',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Send application updates to',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 nithin5nithu123@gmail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Text(
                          '\u2022 Yes, let people who apply to the job message about their application',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Application Deadline',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 No',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Employer Assist',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 Yes, automatically decline candidates after 10 days',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Customized pre-screening',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 Application question: What is the highest level of education you have completed? (Deal breaker)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Text(
                          '\u2022 Application question: How many years of 3D animation experience do you have? (Deal breaker)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Job Settings',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 255,
              decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Country and language',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 India',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Text(
                          '\u2022 English',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Advertising location',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 cyberpark,Calicut',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Expect to hire within',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 1 to 3 days',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Job budget',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/svg/editbutton.svg',
                              // Replace with the path to your SVG file
                              width: 15,
                              height: 15,
                            ),
                          ],
                        ),
                        Text(
                          '\u2022 ₹447.00 daily',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SuccessScreen(),
                        ));
                  },
                  child: Container(
                    height: 39,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Color(0xff09437F),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                      "Submit your application",
                      style: TextStyle(fontSize: 15, color: bg1),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Application step 7 0f 7',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: double.infinity,
              height: 5,
              decoration: BoxDecoration(
                  color: green, borderRadius: BorderRadius.circular(3)),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
