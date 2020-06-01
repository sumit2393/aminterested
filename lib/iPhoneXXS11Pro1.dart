import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class iPhoneXXS11Pro1 extends StatelessWidget {
  iPhoneXXS11Pro1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(52.0, 161.0),
            child: Container(
              width: 254.0,
              height: 264.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(127.0, 132.0)),
                color: const Color(0xffe90040),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(28.0, 524.0),
            child: Container(
              width: 323.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: const Color(0xff00aa9e),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(89.0, 616.0),
            child: Container(
              width: 192.0,
              height: 174.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(96.0, 87.0)),
                color: const Color(0xff002bff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
