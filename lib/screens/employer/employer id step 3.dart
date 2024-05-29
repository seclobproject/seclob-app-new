import 'package:flutter/material.dart';
import 'package:seclob_pro/screens/employer/employe%20id%20step%204.dart';
import 'package:seclob_pro/screens/employer/widget/appbar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:seclob_pro/widgets/appbar_common.dart';

import '../../resources/color.dart';

class Employer_id3 extends StatefulWidget {
  const Employer_id3({super.key});

  @override
  State<Employer_id3> createState() => _Employer_id3State();
}

class _Employer_id3State extends State<Employer_id3> {
  String? _selectedredio;
  String? selectedValue;
  final List<String> peoples = [
    '1',
    '2',
    '3',
  ];

  final List<String> jobtype = [
    'Full-time',
    'Regular / Permanent',
    'Contractual / Temporary',
    'Freelance',
    'Volunteer',
    'Intenship',
    'Fresher',
  ];
  final List<String> schedule = [
    'Morning shift',
    ' Day shift',
    ' Flexible shift',
    'Rotational shift',
    'Fixed shift',
    'Monday to Friday',
    'Weekend availability',
    'Weekend only',
    'UK shift',
    'Other',
  ];
  final List<String> _selectedOptions = [];

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
                'Include details',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2CB070)),
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
                  TextSpan(text: 'what is the job type?'),
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
                child: Wrap(
                  spacing: 8.0,
                  children: jobtype.map((option) {
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
                  TextSpan(text: 'What is the schedule for this job?'),
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
                child: Wrap(
                  spacing: 8.0,
                  children: schedule.map((option) {
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
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Is there a planned start date for this job?',
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
                              groupValue: _selectedredio,
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedredio = value!;
                                });
                              },
                            ),
                            Text(
                              'Yes',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xffDCDCDC)), // Set the border color
                          borderRadius: BorderRadius.circular(
                              5.0), // Optional: adds rounded corners
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
                            Text(
                              'No',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )),
                  ],
                ),
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
                  TextSpan(
                      text:
                          'How many people do you want to hire for this opening?'),
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
            DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              items: peoples
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
                          builder: (context) => Employer_id4(),
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
              'Application step 3 0f 7',
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
                width: 160,
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
