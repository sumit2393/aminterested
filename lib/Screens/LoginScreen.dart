import 'package:aminterested/Constants/ThemeColor.dart';
import 'package:aminterested/Screens/LoginMobileScreen.dart';
import 'package:aminterested/Widgets/FacebookSignInButton.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height: 10,),
                Center(child: Image.asset('assets/images/logo_long.png', height: 60, width: screenWidth/2, fit: BoxFit.contain,)),
                SizedBox(height: 10,),
                Column(
                    children: [
                      CarouselSlider(
                        items: imageSliders,
                        options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 2.0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.map((url) {
                          int index = imgList.indexOf(url);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Color.fromRGBO(0, 0, 0, 0.9)
                                  : Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          );
                        }).toList(),
                      ),
                    ]
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.fromLTRB(10,0,10,10),
                    child: Text('By tapping below, you agree with our Terms of Service and Privacy Policy', style: TextStyle(color: ThemeColor().grey), textAlign: TextAlign.center,)
                ),
                RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    side: BorderSide(color: Color(0xFF4267B2), width: 1.0)
                  ),
                  child: Container(
                    width: 270,
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset('assets/images/fb.png', height: 32, width: 32,),
                        Text('Continue with Facebook', style: TextStyle(color: Color(0xFF4267B2), fontSize: 16 ),),
                      ],
                    ),
                  ),
                  onPressed: (){

                  },
                ),
                Container(
                  width: 250,
                  child: Row(
                    children: <Widget>[
                      Flexible(child: Divider(height: 1, thickness: 1,)),
                      Text('  or  ', style: TextStyle(color: ThemeColor().grey),),
                      Flexible(child: Divider(height: 1, thickness: 1,)),
                    ],
                  ),
                ),
                RaisedButton(
                  color: ThemeColor().pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Container(
                    width: 270,
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(Icons.phone, color: ThemeColor().white,),
                        Text('Continue with Phone Number', style: TextStyle(color: Colors.white, fontSize: 16),),
                      ],
                    ),
                  ),
                  onPressed: (){

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginMobileScreen()));

                  },
                ),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.fromLTRB(10,0,10,10),
                    child: Text('We don\'t post anything to Facebook' , style: TextStyle(color: ThemeColor().grey), textAlign: TextAlign.center,)
                ),
                SizedBox(height: 10,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(5.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
          ],
        )
    ),
  ),
)).toList();
