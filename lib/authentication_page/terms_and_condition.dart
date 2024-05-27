import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navigation/bottom_tabs_screen.dart';
import '../resources/color.dart';
import '../screens/home_page/home_page.dart';

class TermsAndConditionsPage extends StatefulWidget {
  @override
  _TermsAndConditionsPageState createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            SizedBox(height: 80,),

            Text(
              'Terms and condition',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 40),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 100),



            SizedBox(height: 20),
            SizedBox(
              height: 48,
              width: 650,
              child: ElevatedButton(
                onPressed: _isChecked
                    ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BottomTabsScreen()),
                  );
                }
                    : null,
                child: Text('Continue',style: TextStyle(color: bg),),
              ),
            ),

            SizedBox(height: 20,),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          _isChecked = value;
                        });
                      }
                    },
                  ),

                  Text('By continuing, you agree to our Terms\n&Conditionsand Privacy Policy'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
