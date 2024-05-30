import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seclob_pro/resources/color.dart';

class ResumeModal extends StatefulWidget {
  const ResumeModal({super.key});

  @override
  State<ResumeModal> createState() => _ResumeModalState();
}

class _ResumeModalState extends State<ResumeModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: greybackground,
                    scrollable: true,
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Resume',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                    ),
                    content:Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: colorgreay)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                            borderRadius: BorderRadius.zero,
                                            child: Image.network(
                                              'https://s3-alpha-sig.figma.com/img/3d29/5033/e39baeb8f881dd94bed7e0eb19f00eda?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PmmSM3phntdLubm6TRMzed7KnDXgA5W7A4YrbuYPI0w3I80JLmu-CU9DkvkHRkfKho1waQkctEmBLHiQJjKTY~7HqU1DZyHNyisdiwifSLtptXRndv8KCvcGIkFNsxR40ywvTZSeqXoHbl-kX06esVRjSJse7v748rEdOTegNwvkltE-nMivav~WbQOHGybj0QDceVaDjfwnNJqvrimC9QOC2ober~6Pd6bL-eIUdMBoKRjGqZxX7AvKsrKY~~J1TYeKHexaU51sX2bqgvIQu5aWfW1vx-q~PCawzvbAfikFXgpd05WNLmbKU8fabv4uvyH7LNc1Qe6XP3wHaO68Pw__',
                                              width: 45,
                                              height: 51,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text("Document.pdf",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                                ],
                                
                              ),
                            ),
                          ),
                        ),
                      )
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
                                  border: Border.all(color: bluanothor,width: 1.5)
                                ),
                                child: Center(
                                    child: Text("Cancel",style: TextStyle(fontSize: 15,color: bluanothor,fontWeight: FontWeight.w500),)),
                              ),
                        
                            ),
                            SizedBox(width: 20,),
                            Spacer(),
                            GestureDetector(
                                  onTap: (){
                            
                                Navigator.pop(context);
                              },
                            
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: bluanothor,
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