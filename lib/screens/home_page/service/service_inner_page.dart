import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../resources/color.dart';
import 'package:carousel_slider/carousel_slider.dart';

class serviceinnerpage extends StatefulWidget {
  const serviceinnerpage({super.key});

  @override
  State<serviceinnerpage> createState() => _serviceinnerpageState();
}

class _serviceinnerpageState extends State<serviceinnerpage> {
  Future getshowDatePicker() async {
    var selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    );
    return selected;
  }

  String selecteddate = "Select Date";
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/svg/back.svg',
                      // Replace with the path to your SVG file
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Service",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                        color: img_bagground,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // shadow color
                            blurRadius: 0, // shadow radius
                            offset: Offset(0, .1), // shadow offset
                            spreadRadius:
                                0, // The amount the box should be inflated prior to applying the blur
                            // set blur style
                          ),
                        ],
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/location.svg',
                            // Replace with the path to your SVG file
                            width: 15,
                            height: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 110,
                            child: Text(
                              "Palazhi,Kozhikode,67..",
                              style: TextStyle(
                                fontSize: 12,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/svg/filtter.svg',
                    // Replace with the path to your SVG file
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: textColor,
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(3),
                      child: SvgPicture.asset(
                        'assets/svg/searchfinal.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 82,
                      width: 118,
                      decoration: BoxDecoration(
                        color: colorpink1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://customcolonialpainting.com/wp-content/uploads/2022/05/How-Do-You-Know-if-Your-Painter-Did-a-Good-Job_-scaled.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Painter'),
                    RatingBar.builder(
                      itemSize: 15,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Container(
                        height: 50,
                        width: 230,
                        child: Text(
                          "Its nothing great. Over hyped. It gives a shallow DOF which i could replicate using my 14-42mm kit lens itself using  the 42mm end. The only advantage is that you can shoot in a little low.....",
                          style: TextStyle(fontSize: 10),
                        ))
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Pick your date",
                    style: TextStyle(color: bordergreen, fontSize: 14),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: graybg, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$selecteddate"),
                      GestureDetector(
                        onTap: () {
                          getshowDatePicker().then((value) {
                            if (value != null) {
                              setState(() {
                                var date = DateTime.parse(value.toString());
                                selecteddate =
                                    "${date.day}-${date.month}-${date.year}";
                              });
                            }
                          });
                        },
                        child: Icon(
                          Icons.date_range,
                          color: textgray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 48,
                width: 650,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(15, 63, 84, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text('Book now'),
                  onPressed: () {
                    setState(() {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const loginpage()),
                      // );
                      // Navigator.of(context).pushAndRemoveUntil;
                    });

                    // _profileEditing();
                    print('Register');
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://media.istockphoto.com/id/1399204533/vector/mega-sale-special-offer-neon-10-off-sale-banner-sign-board-promotion-vector-illustration.jpg?s=612x612&w=0&k=20&c=zLKXFGLhCbQWEiMicFeEEopzrCieWOvY-JNWjzGGlKs=',
                      fit: BoxFit.fill),
                );
              },
              options: CarouselOptions(
                height: 200,
                enlargeCenterPage: true,
                aspectRatio: 10 / 15,
                viewportFraction: 1,
                autoPlay: true,
                // enlargeCenterPage: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Review & Rating",
                    style: TextStyle(color: bordergreen, fontSize: 14),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: textcolor),
                    child: Center(
                        child: Text(
                      "4.6",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("58 Rating",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                      Container(
                        width: 150,
                        child:  Text(
                          ' dummy text of the printing and typesetting industry',
                          overflow: TextOverflow.ellipsis,
                          style:  TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Expanded(child: SizedBox()),

                  Column(
                    children: [
                      Text('Start Your Review',style: TextStyle(fontSize: 12),),

              SizedBox(height: 3,),


              RatingBar.builder(
                itemSize: 20,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),


                    ],
                  )

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),



            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  // Show a bottom container or perform an action when tapped
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder( // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) {
                        return SizedBox(
                          height: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children:  <Widget>[

                              SizedBox(height: 50,),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Write a review",style: TextStyle(fontSize: 14),)),
                              ),

                              SizedBox(height: 10,),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),

                              SizedBox(height: 20,),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 4,
                                  decoration: InputDecoration(
                                    hintText: "User Reviews........",
                                    border: OutlineInputBorder(  // Add a border around the TextField
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: textColor1), // Customize the border color
                                    ),
                                    enabledBorder: OutlineInputBorder(  // Customize the border when it's not focused
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: textColor1),
                                    ),
                                    focusedBorder: OutlineInputBorder(  // Customize the border when it's focused
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.blue), // Customize the focused border color
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 20,),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30),
                                child: SizedBox(
                                  height: 40,
                                  width: 650,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          Color.fromRGBO(2, 106, 167, 1)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    child: Text('Submit'),
                                    onPressed: () {
                                      setState(() {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => const loginpage()),
                                        // );
                                        // Navigator.of(context).pushAndRemoveUntil;
                                      });

                                    },
                                  ),
                                ),
                              ),



                            ],
                          ),
                        );
                      });
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Write a review'),
                    Icon(
                      Icons.add,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),



            SizedBox(
              height: 10,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: graybg, borderRadius: BorderRadius.circular(10)),
                child: ExpansionTile(
                  title: Text(
                    "Reviews",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(Icons.add_circle, color: textcolor),
                  // Change this to the icon you want
                  children: [

                    ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        // itemCount: ProductInnerpage['data'][0]['review'].length,
                        itemCount:5,

                        itemBuilder: (BuildContext context, int index) {
                          return  Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
                                            fit: BoxFit.fill
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width:150,
                                                child: Text(
                                                  // ProductInnerpage['data'][index]['review']['data'][index]['user_name'],
                                                  'krishnakumar',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                ),
                                              ),

                                              SizedBox(width: 10,),

                                              // SizedBox(
                                              //     height: 20,
                                              //     child: VerticalDivider(
                                              //       thickness: 1,
                                              //       color: Colors.black,
                                              //     )),
                                              Container(
                                                width:50,
                                                child: Text(
                                                  '2:09',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            height: 10,
                                            child: RatingBar.builder(
                                              itemSize: 20,
                                              initialRating: 4,
                                              // initialRating: 4,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemBuilder: (context, _) =>
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      // ProductInnerpage['reviews'][index]
                                      // ['review'],
                                        'Its nothing great. Over hyped. It gives a shallow DOF which i could replicate using my 14-42mm kit lens itself using  the 42mm end. The only advantage is that you can shoot in a little low..... ',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal))),
                              ),

                              SizedBox(height: 20,),

                            ],
                          );
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: graybg, borderRadius: BorderRadius.circular(10)),
                child: ExpansionTile(
                  title: Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(Icons.add_circle, color: textcolor),
                  // Change this to the icon you want
                  children: [
                    // Add your child widgets here
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(
                          width: 550,
                          child: Text(
                              "Submissions should be sent to litterateurrw@gmail.com with a subject line stating your last name, the genre of your piece, and the word “Submission” (ex: Alice Fiction Submission). We accept the following file types: doc, and .docx. Please do NOT send PDFs. In the body of the email, please include a brief self-introduction. All work should be in a 12 point-typeface in a standard font (Times New Roman, Calibri, Cambria, and Arial). We welcome authors to include paintings or photos relevant to the submissions.Submissions recieved before 10th of every month will be considered for next month's issue. Please note that the prefered word count for fiction is less than 2000Copyright reverts to the author upon publication. If you are accepted for publication, please understand that we reserve the right to make minor edits to your piece (punctuation, small matters of word choice, etc). Larger revisions will be requested.")),
                    ),
                  ],
                ),
              ),
            ),



            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: graybg, borderRadius: BorderRadius.circular(10)),
                child: ExpansionTile(
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(
                    Icons.add_circle,
                    color: textcolor,
                  ),
                  // Change this to the icon you want
                  children: [
                    // Add your child widgets here
                    Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Text(
                                        "Submissions should be sent to litterateurrw@gmail.com with a subject line stating your last name, the genre of your piece, and the word “Submission” (ex: Alice Fiction Submission). We accept the following file types: doc, and .docx. Please do NOT send PDFs. In the body of the email, please include a brief self-introduction. All work should be in a 12 point-typeface in a standard font (Times New Roman, Calibri, Cambria, and Arial). We welcome authors to include paintings or photos relevant to the submissions.Submissions recieved before 10th of every month will be considered for next month's issue. Please note that the prefered word count for fiction is less than 2000Copyright reverts to the author upon publication. If you are accepted for publication, please understand that we reserve the right to make minor edits to your piece (punctuation, small matters of word choice, etc). Larger revisions will be requested."))
                              ]),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "About Air Conditioner",
                    style: TextStyle(fontSize: 12, color: bordergreen),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Services offered in AC Service and Repair',
                    style: TextStyle(fontSize: 12, color: textColor),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("1 "),
                  Expanded(
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("2 "),
                  Expanded(
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("3 "),
                  Expanded(
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("4 "),
                  Expanded(
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("5 "),
                  Expanded(
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("6 "),
                  Expanded(
                    child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
