import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../resources/color.dart';


class candidates extends StatefulWidget {
  @override
  _candidatesState createState() => _candidatesState();
}

class _candidatesState extends State<candidates> {
  String selectedChoice = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Wrap(
              spacing: 15,
              children: _buildChoiceList(),
            ),



            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        width: 400,
                        decoration: BoxDecoration(
                            color: lightbg,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Muhammed Arshad"),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: bg1,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2), // Shadow color with opacity
                                          spreadRadius: 1, // Spread radius
                                          blurRadius: 4, // Blur radius
                                          offset: Offset(0, 2), // Offset for horizontal and vertical shadow
                                        ),
                                      ],
                                    ),
                                    child:  SvgPicture.asset(
                                      'assets/svg/truetik.svg',
                                      width: 25,
                                      height: 25,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  )
                                ],
                              ),

                              Text("Calicut , Kerala",style: TextStyle(fontSize: 12),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Personal Assistant",style: TextStyle(fontSize: 12),),

                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: bg1,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2), // Shadow color with opacity
                                          spreadRadius: 1, // Spread radius
                                          blurRadius: 4, // Blur radius
                                          offset: Offset(0, 2), // Offset for horizontal and vertical shadow
                                        ),
                                      ],
                                    ),
                                    child:  SvgPicture.asset(
                                      'assets/svg/truetik.svg',
                                      width: 25,
                                      height: 25,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),

                                ],
                              ),

                              Container(
                                height: 22,
                                width: 81,
                                decoration: BoxDecoration(
                                    color: chipcolor1,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Center(child: Text("Waiting Review",style: TextStyle(fontSize: 8),)),
                              ),

                              SizedBox(height: 5,),

                              Container(
                                height: 22,
                                width: 81,
                                decoration: BoxDecoration(
                                    color: chipcolor1,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Center(child: Text("M com",style: TextStyle(fontSize: 8),)),
                              ),

                              SizedBox(height: 5,),

                              Row(
                                children: [

                                  Text("Applied : 11 November",style: TextStyle(fontSize: 8),),

                                  SizedBox(width: 10,),

                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: chipcolor1,
                                        borderRadius: BorderRadius.all(Radius.circular(5))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.timer,
                                          color: Colors.grey,
                                          size: 10,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Invite to Interview",style: TextStyle(fontSize: 7),),
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: 5,),

                                  Container(
                                    height: 20,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: bluetext,
                                        borderRadius: BorderRadius.all(Radius.circular(5))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.sms,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Message",style: TextStyle(fontSize: 7,color: bg1),),
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: 5,),
                                  Container(
                                    height: 20,
                                    width: 55,
                                    decoration: BoxDecoration(
                                        color: bluetext,
                                        borderRadius: BorderRadius.all(Radius.circular(5))),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                        SizedBox(width: 5,),
                                        Text("Call",style: TextStyle(fontSize: 7,color: bg1),),
                                      ],
                                    ),
                                  )

                                ],
                              ),

                              SizedBox(height: 10,)
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),




          ],
        ),
      ),
    );
  }

  List<Widget> _buildChoiceList() {
    List<String> choices = ['2433 Active', '1119 Shortlist', '0 Hired','0 Hired','0 Hired'];

    return choices.map((String choice) {
      return ChoiceChip(
        backgroundColor: Colors.transparent,
        label: Text(choice),
        selected: selectedChoice == choice,
        onSelected: (bool selected) {
          setState(() {
            selectedChoice = selected ? choice : '';
          });
        },
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: greytext, // Change this color to your desired gray color, // Adjust the width as needed
          ),
          borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
        ),
      );
    }).toList();
  }
}
