import 'package:e_commerce/common/widget/text_field/regex_type.dart';
import 'package:flutter/material.dart';
class CoreTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final Color hintColor;
  final Color textColor;
  final TextInputType textInputType;
  final Function? onChanged;
  final TextEditingController controller;
  final bool isReadOnly;
  final double height;
  final double fontSize;
  final double borderWidth;
  final Icon? suffixIcon;

  final Icon? prefixIcon;

  final Color? focusedBorderColor;
  final Color? borderColor;
  final double radius;
  final String? label;
  final InputRegex regex;
  final List<BoxShadow>? shadow;
  final Color? backgroundColor;
  final String? header;
  final Color? headerTextColor;
  final bool isRequired;
  final Color requiredTextColor;

  CoreTextField(
      {super.key,
      this.hintText = _defaultHintText,
      this.suffixIcon,
      this.prefixIcon,
      this.isPassword = false,
      this.textInputType = _defaultTextInputType,
      required this.controller,
      this.hintColor = _defaultHintColor,
      this.textColor = _defaultTextColor,
      this.onChanged,
      this.isReadOnly = false,
      this.height = 60,
      this.fontSize = _defaultFontSize,
      this.borderWidth = _defaultBorderWidth,
      this.borderColor,
      this.focusedBorderColor,
      this.radius = _defaultRadius,
      this.label,
      this.regex = InputRegex.NONE,
      this.shadow,
      this.backgroundColor,
      this.header,
      this.headerTextColor = _defaultTextColor,
      this.isRequired =false,
      this.requiredTextColor = _defaultRequiredTextColor});

  static const _defaultHintText = "Type here";
  static const _defaultTextInputType = TextInputType.text;
  static const _defaultHintColor = Colors.grey;
  static const _defaultTextColor = Colors.black;
  static const _defaultFontSize = 14.0;
  static const _defaultBorderWidth = 0.0;
  static const _defaultRadius = 16.0;
  static const _defaultCursorColor = Colors.deepOrangeAccent;
  static const _defaultBorderColor = Colors.transparent;
  static const _defaultFocusedBorderColor = Colors.transparent;
  static const _defaultBackgroundColor = Colors.redAccent;
  static const _defaultSpaceBtwContent = 10.0;
  static const _defaultRequiredTextColor = Color(0xFF861315);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header != null
            ? RichText(
                text: TextSpan(
                  text: header,
                  style: TextStyle(
                      color: headerTextColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: isRequired ?  "*" : "",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: requiredTextColor,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              )
            : const SizedBox(
                width: 0,
                height: 0,
              ),
        const SizedBox(
          height: _defaultSpaceBtwContent,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: shadow ?? defaultBoxShadow(),
          ),
          child: TextFormField(
              key: key,
              readOnly: isReadOnly,
              controller: controller,
              obscureText: isPassword,
              keyboardType: textInputType,
              textAlignVertical: TextAlignVertical.center,
              onChanged:
                  onChanged != null ? (String txt) => onChanged!(txt) : null,
              validator: (value) {
                if (regex.pattern != InputRegex.NONE) {
                  RegExp pattern = RegExp(regex.pattern);
                  if (value == null || value.isEmpty) {
                    if (!pattern.hasMatch(regex.pattern)) {
                      return regex.message;
                    } else {
                      return null;
                    }
                  }
                }

                return null;
              },
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
              ),
              cursorColor: _defaultCursorColor,
              decoration: InputDecoration(
                label: label == null ? null : Text(label!),
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                filled: true,
                fillColor: backgroundColor ?? _defaultBackgroundColor,
                focusedBorder: focusedBorderColor != null
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radius),
                        borderSide: BorderSide(
                          color: focusedBorderColor != null
                              ? focusedBorderColor!
                              : _defaultFocusedBorderColor,
                          width: borderWidth,
                        ),
                      )
                    : defaultFocusedBorderStyle(),
                hintText: hintText,
                hintStyle: TextStyle(
                  color: hintColor,
                  fontSize: fontSize,
                ),
                enabledBorder: borderColor != null
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(radius),
                        borderSide: BorderSide(
                            color: borderColor != null
                                ? borderColor!
                                : _defaultBorderColor,
                            width: borderWidth),
                      )
                    : defaultInputBorderStyle(),
              )),
        ),
      ],
    );
  }

  InputBorder defaultFocusedBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(
        color: _defaultFocusedBorderColor,
        width: borderWidth,
      ),
    );
  }

  InputBorder defaultInputBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(
        color: _defaultBorderColor,
        width: borderWidth,
      ),
    );
  }

  List<BoxShadow> defaultBoxShadow() {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 2,
        spreadRadius: 0,
        offset: Offset(0, 1),
        //blurStyle: BlurStyle.outer,
      ),
    ];
  }
}
