import 'package:flutter/material.dart';
import '../navigation/bottom_tabs_screen.dart';
import '../resources/color.dart';


class emptypage extends StatefulWidget {
  const emptypage({super.key});

  @override
  State<emptypage> createState() => _emptypageState();
}

class _emptypageState extends State<emptypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/logo/nofound.jpeg',
              height: 250,
              width: 250,
            ),
          ),
          SizedBox(height: 20,),
          
          InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomTabsScreen()),
                );
              },
              child: Text("Return Home",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: deletecolor),))
        ],
      ),
    );
  }
}
