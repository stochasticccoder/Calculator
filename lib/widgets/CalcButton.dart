import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;

  const CalcButton(
      {Key key,
      this.fillColor,
      this.text,
      this.textColor = 0xFFFFFFFF,
      this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Text(
            text,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: textSize,
            )),
          ),
          onPressed: () {},
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
        ));
  }
}
