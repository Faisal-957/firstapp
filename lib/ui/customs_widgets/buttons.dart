import 'package:first_app/core/constants/colors.dart';
import 'package:first_app/core/constants/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtons extends StatelessWidget {
  String? text;
  Color? boxColor;
  Color? textColor;
  double? borderRadius;

  CustomButtons({
    super.key,
    this.text,
    this.boxColor,
    this.borderRadius,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,

      alignment: Alignment.center,
      width: 319,
      // padding: EdgeInsets.all(20),
      // margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text ?? "", style: style16.copyWith(color: whiteColor)),
    );
  }
}
