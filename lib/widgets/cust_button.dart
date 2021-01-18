import 'package:chat_app/widgets/cust_text.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final Color textcolor;
  final Color buttoncolor;
  final String text;
  final Function onpressed;

  const CustomeButton(
      {Key key,
      this.onpressed,
      this.textcolor = Colors.black,
      this.buttoncolor = Colors.blue,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: buttoncolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomeText(
          alignment: Alignment.center,
          color: textcolor,
          text: text,
          size: 16,
        ),
      ),
      onPressed: onpressed,
    );
  }
}
