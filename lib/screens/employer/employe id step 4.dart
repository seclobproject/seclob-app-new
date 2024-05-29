import 'package:flutter/material.dart';
import 'package:seclob_pro/screens/employer/employer%20id%20step%205.dart';
import 'package:seclob_pro/screens/employer/widget/appbar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../../resources/color.dart';

class Employer_id4 extends StatefulWidget {
  const Employer_id4({super.key});

  @override
  State<Employer_id4> createState() => _Employer_id4State();
}

class _Employer_id4State extends State<Employer_id4> {
  String? selectedValue;

  final List<String> ratelist = [
    'Per day',
    'Per month',
    'Per Year',
  ];
  final List<String> _selectedOptions = [];
  final List<String> _selectedbenefits = [];

  final List<String> supplemental = [
    'Commission pay',
    'Overtime pay',
    'Shift allowance',
    'Joining bonus',
    'Quarterly bonus',
    'Yearly bonus',
    'Others',
  ];

  final List<String> benefits = [
    'Cell phone reimbursement',
    'Flexible schedule',
    'Food allowance',
    'Health insurance',
    'Internet reimbursement',
    'Leave encashment',
    'Life insurance',
    'Paid sick time',
    'Paid time off',
    'Provident Fund',
    ' Work from home',
    'Other',
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
            Align(
              alignment: Alignment.center,
              child: Text(
                'Add compensation',
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
              'Compensation is key',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            Text(
              'Include pay and get up to two times more applications..',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
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
                      'What is the pay?',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
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
                            hintText: 'Starting amount ',
                            hintStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amount',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
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
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 15),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xffDCDCDC)),
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
                              'Rate',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 43,
                              width: 152,
                              child: DropdownButtonFormField2<String>(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffDCDCDC)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                items: ratelist
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Additional compensation adds up',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            Text(
              'Include commission, tips, or bonuses if they are offered?',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
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
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Do you offer any of the following supplemental pay?',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Wrap(
                      spacing: 8.0,
                      children: supplemental.map((option) {
                        return ChoiceChip(
                          label: Text(
                            option,
                            style: TextStyle(
                              color: Color(
                                  0xffAEAEAE), // Example: setting text color to white
                              fontSize: 12.0, // Example: setting font size
                              fontWeight:
                              FontWeight.w500, // Example: setting font weight
                            ),
                          ),
                          selected: _selectedOptions.contains(option),
                          onSelected: (selected) {
                            setState(() {
                              if (selected) {
                                _selectedOptions.add(option);
                              } else {
                                _selectedOptions.remove(option);
                              }
                            });
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                90.0), // Adjust the radius as needed
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ), SizedBox(
              height: 20,
            ),
            Text(
              "It's about the total package",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
            Text(
              'Benefits matter during the job search.',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
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
                child: Wrap(
                  spacing: 8.0,
                  children: benefits.map((option) {
                    return ChoiceChip(
                      label: Text(
                        option,
                        style: TextStyle(
                          color: Color(
                              0xffAEAEAE), // Example: setting text color to white
                          fontSize: 12.0, // Example: setting font size
                          fontWeight:
                          FontWeight.w500, // Example: setting font weight
                        ),
                      ),
                      selected: _selectedbenefits.contains(option),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _selectedbenefits.add(option);
                          } else {
                            _selectedbenefits.remove(option);
                          }
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            90.0), // Adjust the radius as needed
                      ),
                    );
                  }).toList(),
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
                          builder: (context) => Employer_id5(),
                        ));
                  },
                  child: Container(
                    height: 39,
                    width: 157,
                    decoration: BoxDecoration(
                        color: Color(0xff09437F),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                          "save and continue",
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
              'Application step 4 0f 7',
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
                width: 215,
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
