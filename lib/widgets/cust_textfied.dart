import 'package:flutter/material.dart';

class CustTextField extends StatelessWidget {
  final String hint;
  final Function validate;
  final Function onSave;

  const CustTextField({this.hint, this.onSave, this.validate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      onSaved: onSave,
      validator: validate,
      obscureText: hint == 'password' ? true : false,
      decoration: InputDecoration(
        hintText: hint,
        border: UnderlineInputBorder(),
      ),
    );
  }
}
