import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/color.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});

  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  bool _isLoader = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 150,),


              Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),

              SizedBox(height: 10,),

              Text("Welcome back to keep contact with \nus please login here",style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,),


              SizedBox(height: 50,),

              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Email address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),

              SizedBox(height: 15,),

              Container(
                  height: 50,
                  // margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    // controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'namaemail@emailkamu.com',
                        hintStyle: TextStyle(fontSize: 13)
                    ),
                    onChanged: (text) {
                      setState(() {
                        // email = text;
                      });
                    },
                  )),

              SizedBox(height: 30,),



              SizedBox(
                height: 48,
                width: 650,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(2, 109, 169, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: _isLoader
                      ? Transform.scale(
                    scale: 0.6,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                      : Text('Continue'),
                  onPressed: () {
                    setState(() {
                      // login();
                      // _trySubmitForm();
                      // _isLoader = true;
                      // Fluttertoast.showToast(
                      //     msg: "Login Success",
                      //     toastLength: Toast.LENGTH_SHORT,
                      //     gravity: ToastGravity.CENTER,
                      //     timeInSecForIosWeb: 1,
                      //     textColor: Colors.white,
                      //     fontSize: 16.0
                      // );
                      Navigator.of(context).pushAndRemoveUntil;
                    });

                    // _profileEditing();
                    print('complete_Login');
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
