import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seclob_pro/authentication_page/registration.dart';
import 'package:seclob_pro/authentication_page/terms_and_condition.dart';

import '../resources/color.dart';
import 'forget_password.dart';
class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {


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
              Center(
                child: SvgPicture.asset(
                  'assets/svg/loginimg.svg',
                  width: 160,
                  height: 160,
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(height: 30,),

              Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),

              SizedBox(height: 30,),

              // Align(
              //   alignment: Alignment.topLeft,
              //     child: Text("Email address",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),

              // SizedBox(height: 15,),

              Container(
                  height: 55,
                  // margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    // controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Enter Your Email / phone',
                      hintStyle: TextStyle(fontSize: 12,color: Colors.grey)
                    ),
                    onChanged: (text) {
                      setState(() {
                        // email = text;
                      });
                    },
                  )),

              // SizedBox(height: 15,),
              // Align(
              //     alignment: Alignment.topLeft,
              //     child: Text("Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),

              SizedBox(height: 15,),

              Container(
                  height: 55,
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
                      hintText: 'Enter Your Password',
                        hintStyle: TextStyle(fontSize: 12,color: Colors.grey),
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

              SizedBox(height: 10,),
              
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const forgotpassword()),
                  );
                },
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forget Password?",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: buttoncolor),)),
              ),

              SizedBox(height: 20,),


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
                        MaterialPageRoute(builder: (context) => TermsAndConditionsPage()),
                      );
                      Navigator.of(context).pushAndRemoveUntil;
                    });

                    // _profileEditing();
                    print('complete_Login');
                  },
                ),
              ),

              SizedBox(height: 10,),

              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                        height: 50,
                      )),
                ),

                Text("OR"),

                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                        height: 50,
                      )),
                ),
              ]),

              SizedBox(height: 10,),



              SizedBox(
                width: 650,
                height: 42,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(255, 255, 255, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/ic_google.svg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.scaleDown,
                      ),
                      Text('Sign in with google',style: TextStyle(color: Colors.black,fontSize: 12),),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushAndRemoveUntil;
                    });

                    // _profileEditing();
                    print('complete_Login');
                  },
                ),
              ),

              SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account ?'),
                  SizedBox(width: 5,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const registration()),
                        );
                      },
                      child: Text(' Create one',style: TextStyle(fontWeight: FontWeight.w600,color: buttoncolor),)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
