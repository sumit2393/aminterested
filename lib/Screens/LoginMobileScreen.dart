import 'package:aminterested/Constants/ThemeColor.dart';
import 'package:aminterested/Widgets/FacebookSignInButton.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

class LoginMobileScreen extends StatefulWidget {
  @override
  _LoginMobileScreenState createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(height: 100,),
                      Image.asset('assets/images/loginbanner.png', height: screenHeight/3.4,),
//                    Text('Continue with Phone Number ', style: TextStyle(color: ThemeColor().pink, fontSize: 18),),
                      SizedBox(height: 35,),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'We will send you an ',
                                style: TextStyle(color: ThemeColor().pink, fontSize: 16,),
                                children: [
                                  TextSpan(
                                    text: 'One Time Password', style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' on this phone number.',
                                  ),
                                ]
                            ),

                          )
                      ),
                      SizedBox(height: 35,),
                      Container(
//                      padding: EdgeInsets.all(20),
                        width: screenWidth/1.25,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                          maxLength: 10,
                          decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                              counterText: '',
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              hintText: "+91",
                              fillColor: Colors.white70),
                        ),
                      ),
                      SizedBox(height: 30,),
                      RaisedButton(
                        color: ThemeColor().pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Container(
                          width: screenWidth/1.40,
                          height: 40,
                          decoration: BoxDecoration(
//                          gradient: LinearGradient(
//                            colors: [Colors.pink[600], Colors.pink[400]]
//                          )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Next', style: TextStyle(color: Colors.white, fontSize: 16),),
                              Icon(Icons.arrow_forward_ios, color: ThemeColor().white,),
                            ],
                          ),
                        ),
                        onPressed: (){

                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginMobileOTPScreen()));

                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class LoginMobileOTPScreen extends StatefulWidget {
  @override
  _LoginMobileOTPScreenState createState() => _LoginMobileOTPScreenState();
}

class _LoginMobileOTPScreenState extends State<LoginMobileOTPScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 16,), backgroundColor: Colors.grey,
                      ),
                    )
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(height: 100,),
                      Container(
                        padding: EdgeInsets.all(20),
                          child: Text('Enter 6 digits verfication code sent to your number ', style: TextStyle(color: ThemeColor().pink, fontSize: 18), textAlign: TextAlign.center,)
                      ),
                      SizedBox(height: 46,),
                      PinEntryTextField(
                        showFieldAsBox: true,
                        fields: 6,
                        onSubmit: (String pin){
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Pin"),
                                  content: Text('Pin entered is $pin'),
                                );
                              }
                          ); //end showDialog()
                        }, // end onSubmit
                      ),
                      SizedBox(height: 35,),
                      RaisedButton(
                        color: ThemeColor().pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Container(
                          width: screenWidth/1.40,
                          height: 40,
                          decoration: BoxDecoration(
//                          gradient: LinearGradient(
//                            colors: [Colors.pink[600], Colors.pink[400]]
//                          )
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Confirm', style: TextStyle(color: Colors.white, fontSize: 16),),
                              Icon(Icons.arrow_forward_ios, color: ThemeColor().white,),
                            ],
                          ),
                        ),
                        onPressed: (){

//                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginMobileScreen()));

                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}









class PinEntryTextField extends StatefulWidget {
  final String lastPin;
  final int fields;
  final ValueChanged<String> onSubmit;
  final num fieldWidth;
  final num fontSize;
  final bool isTextObscure;
  final bool showFieldAsBox;

  PinEntryTextField(
      {this.lastPin,
        this.fields: 4,
        this.onSubmit,
        this.fieldWidth: 40.0,
        this.fontSize: 20.0,
        this.isTextObscure: false,
        this.showFieldAsBox: false})
      : assert(fields > 0);

  @override
  State createState() {
    return PinEntryTextFieldState();
  }
}

class PinEntryTextFieldState extends State<PinEntryTextField> {
  List<String> _pin;
  List<FocusNode> _focusNodes;
  List<TextEditingController> _textControllers;

  Widget textfields = Container();

  @override
  void initState() {
    super.initState();
    _pin = List<String>(widget.fields);
    _focusNodes = List<FocusNode>(widget.fields);
    _textControllers = List<TextEditingController>(widget.fields);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (widget.lastPin != null) {
          for (var i = 0; i < widget.lastPin.length; i++) {
            _pin[i] = widget.lastPin[i];
          }
        }
        textfields = generateTextFields(context);
      });
    });
  }

  @override
  void dispose() {
    _textControllers.forEach((TextEditingController t) => t.dispose());
    super.dispose();
  }

  Widget generateTextFields(BuildContext context) {
    List<Widget> textFields = List.generate(widget.fields, (int i) {
      return buildTextField(i, context, i == 0);
    });

    if (_pin.first != null) {
      FocusScope.of(context).requestFocus(_focusNodes[0]);
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: textFields);
  }

  void clearTextFields() {
    _textControllers.forEach(
            (TextEditingController tEditController) => tEditController.clear());
    _pin.clear();
  }

  Widget buildTextField(int i, BuildContext context, [bool autofocus = false]) {
    if (_focusNodes[i] == null) {
      _focusNodes[i] = FocusNode();
    }
    if (_textControllers[i] == null) {
      _textControllers[i] = TextEditingController();
      if (widget.lastPin != null) {
        _textControllers[i].text = widget.lastPin[i];
      }
    }

    _focusNodes[i].addListener(() {
      if (_focusNodes[i].hasFocus) {}
    });

    final String lastDigit = _textControllers[i].text;

    return Container(
      alignment: Alignment.center,
      width: widget.fieldWidth,
      margin: EdgeInsets.only(right: 10.0),
      child: TextField(
        controller: _textControllers[i],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        autofocus: autofocus,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            // color: Colors.black,
            fontSize: widget.fontSize),
        focusNode: _focusNodes[i],
        obscureText: widget.isTextObscure,
        decoration: InputDecoration(
            counterText: "",
            border: widget.showFieldAsBox
                ? OutlineInputBorder(borderSide: BorderSide(width: 2.0))
                : null),
        onChanged: (String str) {
          setState(() {
            _pin[i] = str;
          });
          if (i + 1 != widget.fields) {
            _focusNodes[i].unfocus();
            if (lastDigit != null && _pin[i] == '') {
              FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
            } else {
              FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
            }
          } else {
            _focusNodes[i].unfocus();
            if (lastDigit != null && _pin[i] == '') {
              FocusScope.of(context).requestFocus(_focusNodes[i - 1]);
            }
          }
          if (_pin.every((String digit) => digit != null && digit != '')) {
            widget.onSubmit(_pin.join());
          }
        },
        onSubmitted: (String str) {
          if (_pin.every((String digit) => digit != null && digit != '')) {
            widget.onSubmit(_pin.join());
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return textfields;
  }
}