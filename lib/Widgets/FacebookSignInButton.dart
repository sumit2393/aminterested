import 'package:flutter/material.dart';
class FacebookSignInButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double borderRadius;
  final Color splashColor;

  /// Creates a new button. The default button text is 'Continue with Facebook',
  /// which apparently results in higher conversion. 'Login with Facebook' is
  /// another suggestion.
  FacebookSignInButton({
    this.onPressed,
    this.borderRadius = defaultBorderRadius,
    this.text = 'Continue with Facebook',
    this.textStyle,
    this.splashColor,
    Key key,
  })  : assert(text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableButton(
      buttonColor: Color(0xFF4267B2),
      borderRadius: borderRadius,
      splashColor: splashColor,
      onPressed: onPressed,
      buttonPadding: 8.0,
      children: <Widget>[
        // Facebook doesn't provide strict sizes, so this is a good
        // estimate of their examples within documentation.

        Image(
          image: AssetImage(
            "graphics/flogo-HexRBG-Wht-100.png",
          ),
          height: 24.0,
          width: 24.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 10.0),
          child: Text(
            text,
            style: textStyle ?? TextStyle(
              // default to the application font-style
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}


const double defaultBorderRadius = 3.0;

class StretchableButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double borderRadius;
  final double buttonPadding;
  final Color buttonColor, splashColor;
  final Color buttonBorderColor;
  final List<Widget> children;

  StretchableButton({
    @required this.buttonColor,
    @required this.borderRadius,
    @required this.children,
    this.splashColor,
    this.buttonBorderColor,
    this.onPressed,
    this.buttonPadding,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var contents = List<Widget>.from(children);

        if (constraints.minWidth == 0) {
          contents.add(SizedBox.shrink());
        } else {
          contents.add(Spacer());
        }

        BorderSide bs;
        if (buttonBorderColor != null) {
          bs = BorderSide(
            color: buttonBorderColor,
          );
        } else {
          bs = BorderSide.none;
        }

        return ButtonTheme(
          height: 40.0,
          padding: EdgeInsets.all(buttonPadding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: bs,
          ),
          child: RaisedButton(
            onPressed: onPressed,
            color: buttonColor,
            splashColor: splashColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: contents,
            ),
          ),
        );
      },
    );
  }
}