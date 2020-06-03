import 'package:aminterested/Constants/ThemeColor.dart';
import 'package:aminterested/Widgets/GenderSelection.dart';
import 'package:flutter/material.dart';



class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height - 40;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.bottomRight,
              height: screenHeight,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screenHeight/2.5,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(100),
                    child: RichText(
                        text:TextSpan(
                            text: 'Profile Screen',
                            style: TextStyle(fontSize:25,color: ThemeColor().purpledark)
                        )
                    ),
                  ),

                  Container(
                    height: screenHeight/4,
                    width: screenWidth/1.25,
                    child: TextField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          focusedBorder: new OutlineInputBorder(
                            borderSide: BorderSide(color: ThemeColor().purpledark),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          counterText: '',
                          filled: true,
                          hintStyle: new TextStyle(color:ThemeColor().yellow),
                          hintText: "Full Name",
                          fillColor: Colors.white70
                      ),
                    ),
                  ),

                  Container(
                      height: screenHeight/2.9,
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegistrationScreen2()));
                        },
                        iconSize: 100,
                        color: ThemeColor().purpledark,
                      )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class RegistrationScreen2 extends StatefulWidget {
  @override
  _RegistrationScreen2State createState() => _RegistrationScreen2State();
}

class _RegistrationScreen2State extends State<RegistrationScreen2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height - 40;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.bottomRight,
              height: screenHeight,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screenHeight/2.5,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(100),
                    child: RichText(
                        text:TextSpan(
                            text: 'Select Gender',
                            style: TextStyle(fontSize:25,color: ThemeColor().purpledark)
                        )
                    ),
                  ),

                  Container(
                    height: screenHeight/4,
                    width: screenWidth/1.25,
                    child: GenderSelection(
//                      linearGradient: LinearGradient(colors: [Colors.pink, Colors.red]),
                      selectedGenderIconBackgroundColor: Colors.indigo, // default red
                      checkIconAlignment: Alignment.centerRight,   // default bottomRight
//                      selectedGenderCheckIcon: null, // default Icons.check
                      onChanged: (Gender gender){

                        print(gender);

                      },
                      femaleImage: AssetImage('assets/images/girl.png'),
                      maleImage: AssetImage('assets/images/boy.png'),
                      equallyAligned: true,
                      animationDuration: Duration(milliseconds: 400),
                      isCircular: true, // default : true,
                      isSelectedGenderIconCircular: true,
                      opacityOfGradient: 0.6,
                      padding: const EdgeInsets.all(3),
                      size: 120, //default : 120
                    ),
                  ),

                  Container(
                      height: screenHeight/2.9,
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_left),
                            onPressed:(){

                              Navigator.of(context).pop();

                            },
                            iconSize: 100,
                            color: ThemeColor().purpledark,
                          ),

                          IconButton(
                            icon: Icon(Icons.arrow_right),
                            onPressed:(){

                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegistrationScreen3()));

                            },
                            iconSize: 100,
                            color: ThemeColor().purpledark,
                          ),
                        ],
                      )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class RegistrationScreen3 extends StatefulWidget {
  @override
  _RegistrationScreen3State createState() => _RegistrationScreen3State();
}

class _RegistrationScreen3State extends State<RegistrationScreen3> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height - 40;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.bottomRight,
              height: screenHeight,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screenHeight/2.5,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(7),
                    child: RichText(
                        text:TextSpan(
                            text: 'Select Date of Birth',
                            style: TextStyle(fontSize:25,color: ThemeColor().purpledark)
                        )
                    ),
                  ),

                  Container(
                    height: screenHeight/4,
                    width: screenWidth/1.25,
                    child: Container(),
                  ),

                  Container(
                      height: screenHeight/2.9,
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_left),
                            onPressed:(){

                              Navigator.of(context).pop();

                            },
                            iconSize: 100,
                            color: ThemeColor().purpledark,
                          ),

                          IconButton(
                            icon: Icon(Icons.arrow_right),
                            onPressed:(){

                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegistrationScreen2()));

                            },
                            iconSize: 100,
                            color: ThemeColor().purpledark,
                          ),
                        ],
                      )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



