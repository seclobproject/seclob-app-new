import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seclob_pro/resources/color.dart';

class QuestionsModal extends StatefulWidget {
  const QuestionsModal({super.key});


  @override
  State<QuestionsModal> createState() => _QuestionsModalState();
}

class _QuestionsModalState extends State<QuestionsModal> {
  String? _selectedRadio;
  final List<String> options = ['Yes, I can make the commute', 'Yes, I am planning to relocate', 'Yes, but I need relocation assistance', 'No'];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: greybackground,
      scrollable: true,
      title: Text('Questions from Seclob Technologies',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Will you be able to reliably commute or relocate to calicut, for this job?",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              ...List.generate(
                options.length,
                (index) => Row(
                  children: [
                    Radio<String>(
                      value: options[index],
                      groupValue: _selectedRadio,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedRadio = value!;
                        });
                      },
                    ),
                    Text(
                      options[index],
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "How many years of total work experience do you have?",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  border: Border.all(color: borderGrey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (text) {},
                  ),
                ),
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
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: buttoncolor, width: 1.5)),
                  child: Center(
                      child: Text(
                    "Cancel",
                    style: TextStyle(
                        fontSize: 15,
                        color: buttoncolor,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: buttoncolor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: Text(
                    "Done",
                    style: TextStyle(fontSize: 15, color: bg1),
                  )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
