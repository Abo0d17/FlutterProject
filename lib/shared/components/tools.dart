import 'package:flutter/material.dart';

Widget label({
  required String text,
  double? size,
  Color color = Colors.black,
  FontWeight? bold,
}) =>
    Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: bold,
        color: color,
      ),
    );

Widget textBox(
        {IconData? prefixIcon,
        IconData? suffixIcon,
        String? suffixText,
        required String hint,
        required String labelText,
        TextInputType? keyBoard,
        bool autofocus = false}) =>
    TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          isDense: true,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
          suffixText: suffixText,
          hintText: hint,
          label: label(text: labelText)),
      keyboardType: keyBoard,
      autofocus: autofocus,
    );

Widget button(
        {double? width,
        Color? backColor,
        double radius = 0.0,
        required String text,
        required Function click,
        Color? txtColor}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: () {
          click();
        },
        child: label(text: text, color: txtColor!),
      ),
    );

Widget textButton({
  required Function click,
  required String text,
}) =>
    TextButton(
      onPressed: () {
        click();
      },
      child: Text(text),
    );
