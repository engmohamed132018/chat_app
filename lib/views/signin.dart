import 'package:chat_app/widgets/cust_button.dart';
import 'package:chat_app/widgets/cust_text.dart';
import 'package:chat_app/widgets/cust_textfied.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  double width, height = 0.0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Flutter chat '),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: height / 2.5,
            ),
            CustTextField(
              hint: 'Email',
              onSave: (value) {},
              validate: (value) {},
            ),
            SizedBox(
              height: height * 0.01,
            ),
            CustTextField(
              hint: 'password',
              onSave: (value) {},
              validate: (value) {},
            ),
            SizedBox(
              height: height * 0.03,
            ),
            CustomeText(
              alignment: Alignment.centerRight,
              text: 'forget password ?',
              color: Colors.white,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            CustomeButton(
              buttoncolor: Colors.blue[700],
              onpressed: () {},
              text: 'SIGN IN',
              textcolor: Colors.white,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomeButton(
              buttoncolor: Colors.white,
              onpressed: () {},
              text: 'sign in with google',
              textcolor: Colors.black,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomeText(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  text: "Don't have an account ?",
                  size: 15,
                ),
                CustomeText(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  text: "REgisterNow",
                  size: 15,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
