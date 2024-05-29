import 'package:flutter/material.dart';
import 'package:seclob_pro/screens/employer/widget/appbar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../resources/color.dart';
import 'employer id step 7.dart';

class Employer_id6 extends StatefulWidget {
  const Employer_id6({super.key});

  @override
  State<Employer_id6> createState() => _Employer_id6State();
}

class _Employer_id6State extends State<Employer_id6> {
  String? _selectedredio;
  String? selectedValue;
  final List<String> _experience = [
    '1 Year',
    '2 Year',
    '3 Year',
  ];

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
            Column(
              children: [
                Text(
                  'Customized pre-screening',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2CB070)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'What qualifications top your list?',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black),
                ),
                Text(
                  'Add 3 to 5 qualifications to build a strong candidate pool',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Text(
              'Application question :',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Minimum education level :',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
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
                          Text('Secondary(10th pass)',
                              style: TextStyle(fontSize: 12)),
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
                          Text('Higher secondary(12th pass)',
                              style: TextStyle(fontSize: 12)),
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
                          Text('Diploma', style: TextStyle(fontSize: 12)),
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
                            value: 'Option 4',
                            groupValue: _selectedredio,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedredio = value!;
                              });
                            },
                          ),
                          Text('Bachelor’s', style: TextStyle(fontSize: 12)),
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
                            value: 'Option 5',
                            groupValue: _selectedredio,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedredio = value!;
                              });
                            },
                          ),
                          Text('Master', style: TextStyle(fontSize: 14)),
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
              'Application question',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'At least',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 43,
                  width: 120,
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
                        borderSide: const BorderSide(color: Color(0xffDCDCDC)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    items: _experience
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
                Text(
                  'of',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black),
                ),
                Container(
                  height: 43,
                  width: 100,
                  child: TextFormField(
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
                          borderSide:
                              const BorderSide(color: Color(0xffDCDCDC)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        border: const OutlineInputBorder()),
                  ),
                ),
                Text(
                  'Experiance',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black),
                ),
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
                          builder: (context) => Employer_id7(),
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
              'Application step 6 0f 7',
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
                width: 323,
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
