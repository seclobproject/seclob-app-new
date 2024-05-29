import 'package:flutter/material.dart';
import 'package:seclob_pro/screens/employer/employer%20id%20step%206.dart';
import 'package:seclob_pro/screens/employer/widget/appbar.dart';

import '../../resources/color.dart';
import 'employe id step 4.dart';

class Employer_id5 extends StatefulWidget {
  const Employer_id5({super.key});

  @override
  State<Employer_id5> createState() => _Employer_id5State();
}

class _Employer_id5State extends State<Employer_id5> {
  String? _selectedredio;
  String? _deadline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff034B76),
                  Color(0xff0578BE)
                ], // Your gradient colors
              ),
            ),
          ),
          title: MyAppBar()),
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
                'Set application preferences',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2CB070)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Let  applicants call you directly',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            Text(
              'Enter the phone number applicants can call for information regarding this job post...',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: TextFormField(
                maxLines: null,
                minLines: 1,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffCDCDCD)),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffDCDCDC)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: const OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'Would you like people to submit a resume?'),
                  TextSpan(
                    text: ' *',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffDCDCDC))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xffDCDCDC))),
                      child: Row(
                        children: [
                          Radio<String>(
                            value: 'Option 1',
                            groupValue: _selectedredio,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedredio = value!;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Yes', style: TextStyle(fontSize: 12)),
                              Text(
                                  'People will be required to include a resume.',
                                  style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xffDCDCDC))),
                      child: Row(
                        children: [
                          Radio<String>(
                            value: 'Option 2',
                            groupValue: _selectedredio,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedredio = value!;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('No', style: TextStyle(fontSize: 14)),
                              Text(
                                  'People will not be asked to include a resume.',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xffDCDCDC))),
                      child: Row(
                        children: [
                          Radio<String>(
                            value: 'Option 3',
                            groupValue: _selectedredio,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedredio = value!;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Optional', style: TextStyle(fontSize: 14)),
                              Text(
                                  'People can choose whether to include a resume',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Is there an application deadline?',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffDCDCDC))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xffDCDCDC))),
                      child: Row(
                        children: [
                          Radio<String>(
                            value: 'Option 1',
                            groupValue: _deadline,
                            onChanged: (String? value) {
                              setState(() {
                                _deadline = value!;
                              });
                            },
                          ),
                          Text('Yes', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xffDCDCDC))),
                      child: Row(
                        children: [
                          Radio<String>(
                            value: 'Option 2',
                            groupValue: _deadline,
                            onChanged: (String? value) {
                              setState(() {
                                _deadline = value!;
                              });
                            },
                          ),
                          Text('No', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Is there an application deadline?',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'Send daily updates about this job and applications to:'),
                  TextSpan(
                    text: ' *',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: null,
              minLines: 1,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffDCDCDC)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: const OutlineInputBorder()),
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
                          builder: (context) => Employer_id6(),
                        ));
                  },
                  child: Container(
                    height: 39,
                    width: 86,
                    decoration: BoxDecoration(
                        color: Color(0xff09437F),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                          "Continue",
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
              'Application step 5 0f 7',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
            ),
            SizedBox(
              height: 7,
            ),
            Stack(children: [
              Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                    color: textColor1, borderRadius: BorderRadius.circular(3)),
              ),
              Container(
                width: 270,
                height: 5,
                decoration: BoxDecoration(
                    color: green, borderRadius: BorderRadius.circular(3)),
              ),
            ]),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
