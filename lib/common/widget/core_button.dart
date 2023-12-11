import 'package:flutter/material.dart';

class CoreButton extends StatelessWidget {
  static const Color defaultBackgroundColor = Color(0xff339e5b);

  CoreButton(
      {super.key,
      this.backgroundColor = defaultBackgroundColor,
      this.textColor = Colors.white,
      this.borderColor = Colors.transparent,
      this.rippleColor = Colors.white,
      this.radius = 20,
      this.borderWidth = 1,
      this.fontSize = 16,
      this.gradientColor,
      this.outlineButton = false,
      this.shadowColor = null,
      required this.text,
      required this.onClick});

  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  final Color rippleColor;
  final double radius;
  final double borderWidth;
  final Gradient? gradientColor;
  final List<BoxShadow>? shadowColor;
  final String text;
  final Function onClick;
  final double fontSize;
  final bool outlineButton;
  final Color _outlineTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return gradientColor != null
        ? Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: gradientColor,
              boxShadow: shadowColor,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: ElevatedButton(
              onPressed: () {
                onClick;
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  side: BorderSide(color: borderColor, width: outlineButton ? 0 : borderWidth),
                  textStyle: TextStyle(
                    fontSize: fontSize,
                    color: textColor,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius))),
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ),
            ),
          )
        : outlineButton
            ? Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: shadowColor,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(radius)),
                child: OutlinedButton(
                  onPressed: () {
                    onClick;
                  },
                  style: OutlinedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: backgroundColor,
                      //  disabledBackgroundColor: Colors.grey,
                      //  disabledForegroundColor: Colors.grey,
                      side: BorderSide(color: backgroundColor, width: borderWidth),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(radius))
                  ),
                  child: Text(
                    text,
                    style: TextStyle(color: _outlineTextColor, fontSize: fontSize),
                  ),
                ),
              )
            : Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: shadowColor,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(radius)),
                child: ElevatedButton(
                  onPressed: () {
                    onClick;
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: rippleColor,
                      backgroundColor: backgroundColor,
                      //  disabledBackgroundColor: Colors.grey,
                      //  disabledForegroundColor: Colors.grey,
                      side: BorderSide(color: borderColor, width: outlineButton ? 0 : borderWidth),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(radius))),
                  child: Text(
                    text,
                    style: TextStyle(color: textColor, fontSize: fontSize),
                  ),
                ),
              );
  }
}
