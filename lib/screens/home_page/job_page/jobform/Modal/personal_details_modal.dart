import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:seclob_pro/resources/color.dart';

class PesonalModal extends StatefulWidget {
  const PesonalModal({super.key});

  @override
  State<PesonalModal> createState() => _PesonalModalState();
}

class _PesonalModalState extends State<PesonalModal> {
      String Districtdropdownvalue = ' Kozhikode';
  String Statedropdownvalue = 'Kerala';
  var Districtitems = [' Kozhikode', 'Ernakulam', 'Thrissur'];
  var Stateitems = ['Kerala', 'Tamil Nadu', 'New Delhi'];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
                    backgroundColor: greybackground,
                    scrollable: true,
                    title: Text('Job title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                          border: Border.all(
                            color: borderGrey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          textAlign: TextAlign.start, // <-- Main change here
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your name ....",
                              hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontSize: 12)),
                          onChanged: (text) {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: borderGrey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          textAlign: TextAlign.start, // <-- Main change here
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your email ...",
                              hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.6),
                                  fontSize: 12)),
                          onChanged: (text) {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IntlPhoneField(
                      decoration: InputDecoration(
                        fillColor:Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                        hintText: 'Enter yourPhone number',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xffC8C8C8)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffDCDCDC)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "State",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 10),
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[200],
                                  border: Border.all(color: borderGrey),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: DropdownButton(
                                    underline: Container(),
                                    isExpanded: true,
                                    borderRadius: BorderRadius.circular(10),
                                    elevation: 0,
                                    value: Statedropdownvalue,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    items: Stateitems.map((String item) {
                                      return DropdownMenuItem(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                            color: textgrey1,
                                            fontSize:
                                                10, // Set text color to black (optional)
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        Statedropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            width:
                                20), // Spacer replaced with SizedBox for specific width
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "District",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 10),
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 43,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[200],
                                  border: Border.all(color: textgrey1),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: DropdownButton(
                                    underline: Container(),
                                    isExpanded: true,
                                    borderRadius: BorderRadius.circular(10),
                                    elevation: 0,
                                    value: Districtdropdownvalue,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    items: Districtitems.map((String item) {
                                      return DropdownMenuItem(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                            color: textgrey1,
                                            fontSize:
                                                10, // Set text color to black (optional)
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        Districtdropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                          ],
                        ),
                      ),
                    ),
                     actions: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: Row(
                          
                          children: [
                            GestureDetector(
                              onTap: (){
                        
                            Navigator.pop(context);
                          },
                        
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: buttoncolor,width: 1.5)
                                ),
                                child: Center(
                                    child: Text("Cancel",style: TextStyle(fontSize: 15,color: buttoncolor,fontWeight: FontWeight.w500),)),
                              ),
                        
                            ),
                            Spacer(),
                            GestureDetector(
                                  onTap: (){
                            
                                Navigator.pop(context);
                              },
                            
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: buttoncolor,
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Center(
                                        child: Text("Done",style: TextStyle(fontSize: 15,color: bg1),)),
                                  ),
                            
                                ),
                          ],
                        ),
                      ),
                    ],
                  );
  }
}