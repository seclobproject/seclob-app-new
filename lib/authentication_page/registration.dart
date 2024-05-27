import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_page.dart';
class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {

  bool hidePassword = true;
  bool _isLoader = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60,),


              Text("Create Account",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),

              SizedBox(height: 10,),

              Text("Welcome back to keep contact with \nus please login here",style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,),

              SizedBox(height: 30,),

              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),

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
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(fontSize: 13)
                    ),
                    onChanged: (text) {
                      setState(() {
                        // email = text;
                      });
                    },
                  )),

              SizedBox(height: 15,),

              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Email",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),

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
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(fontSize: 13)
                    ),
                    onChanged: (text) {
                      setState(() {
                        // email = text;
                      });
                    },
                  )),

              SizedBox(height: 15,),


              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Phone",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),

              SizedBox(height: 15,),

              Container(
                  height: 50,
                  // margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    // controller: nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Enter Your Mobile Number',
                        hintStyle: TextStyle(fontSize: 13)
                    ),
                    onChanged: (text) {
                      setState(() {
                        // email = text;
                      });
                    },
                  )),



              SizedBox(height: 15,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),

              SizedBox(height: 15,),

              Container(
                height: 50,
                child:  TextFormField(
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      // password = value;
                    });
                  },
                  obscureText: hidePassword, //show/hide password
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(fontSize: 13),
                    suffixIcon: IconButton(
                      icon: hidePassword
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                  ),
                ),),

              SizedBox(height: 15,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Confirm Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),

              SizedBox(height: 15,),

              Container(
                height: 50,
                child:  TextFormField(
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      // password = value;
                    });
                  },
                  obscureText: hidePassword, //show/hide password
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter your Password',
                    hintStyle: TextStyle(fontSize: 13),
                    suffixIcon: IconButton(
                      icon: hidePassword
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                  ),
                ),),

              SizedBox(height: 40,),

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
                      : Text('Sign Up'),
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

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const loginpage()),
                      );
                      Navigator.of(context).pushAndRemoveUntil;
                    });

                    // _profileEditing();
                    print('Register');
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
