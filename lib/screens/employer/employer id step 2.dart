import 'package:flutter/material.dart';
import 'package:seclob_pro/screens/employer/widget/appbar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../resources/color.dart';
import 'employer id step 3.dart';

class Employer_id2 extends StatefulWidget {
  const Employer_id2({super.key});

  @override
  State<Employer_id2> createState() => _Employer_id2State();
}

class _Employer_id2State extends State<Employer_id2> {
  bool _checkbox = true;
  String? _selectedredio;
  String? _selectedOption;
  final List<String> companylist = [
    'Option 1',
    'Option 2',
    'Option 3',
  ];
  final List<String> state = [
    'Kerala',
    'Tamil nadu',
    'Goa',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
        title: MyAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Provide basic information',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2CB070)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffDCDCDC)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Country : India',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Language : English',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Company name: Seclob Technologies Pvt.Ltd',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: "Your company's industry"),
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
            SizedBox(height: 10),
            DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              hint: const Text(
                'Select optional',
                style: TextStyle(fontSize: 14),
              ),
              items: companylist
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              onChanged: (value) {},
              onSaved: (value) {
                selectedValue = value.toString();
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black45,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Company description',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            Text(
              'Introduce your company in a few lines.',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            TextFormField(
              maxLines: null,
              minLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText:
                    'Present your company by communicating your business\nyour market position, your company culture, etc.',
                hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5E5E5E)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffDCDCDC)),
                  borderRadius: BorderRadius.circular(15),
                ),
                border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: "Your company's industry"),
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
            SizedBox(height: 10),
            TextFormField(
              maxLines: null,
              minLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Enter your job title...',
                hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffD0D0D0)),
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
                border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: "Your company's industry"),
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
            SizedBox(height: 10),
            Container(
                height: 43,
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
                    Text('Employees will report to a specific address',
                        style: TextStyle(fontSize: 12)),
                  ],
                )),
            SizedBox(height: 10),
            Container(
                height: 43,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffDCDCDC)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
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
                    Text('Employees will not report to a specific address',
                        style: TextStyle(fontSize: 12)),
                  ],
                )),
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
                  TextSpan(text: "Your company's industry"),
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
                  hintText: 'Enter your job title...',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffD0D0D0)),
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
            Text(
              'Building name',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
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
                  hintText: 'Enter your building name...',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffD0D0D0)),
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
            Text(
              'Area',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
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
                  hintText: 'Enter your area.....',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffD0D0D0)),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Area',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 43,
                      width: 152,
                      child: TextFormField(
                        maxLines: null,
                        minLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Pincode',
                            hintStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffD0D0D0)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffDCDCDC)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            border: const OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'State',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 43,
                      width: 152,
                      child: DropdownButtonFormField2<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffDCDCDC)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        items: state
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedValue = value.toString();
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.only(right: 8),
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                          iconSize: 24,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                    ),
                  ],
                )
              ],
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
                          builder: (context) => Employer_id3(),
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
              'Application step 2 0f 7',
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
                width: 110,
                height: 5,
                decoration: BoxDecoration(
                    color: green, borderRadius: BorderRadius.circular(3)),
              ),
            ]),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
