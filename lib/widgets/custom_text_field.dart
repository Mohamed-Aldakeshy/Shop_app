import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.hintText, this.onChange, this.obScureText = false, this.inputType});
  String? hintText;
  Function(String)? onChange;
  TextInputType? inputType;

  bool? obScureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obScureText!,
      keyboardType: inputType,
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
