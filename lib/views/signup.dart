import 'package:flutter/material.dart';
import 'package:chat_app/widgets/cust_button.dart';
import 'package:chat_app/widgets/cust_text.dart';
import 'package:chat_app/widgets/cust_textfied.dart';

class SignUp extends StatelessWidget {
  double width, height = 0.0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    String userName, email, password;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Flutter chat '),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          child: ListView(
            children: [
              SizedBox(
                height: height / 2.5,
              ),
              CustTextField(
                hint: 'UserName',
                onSave: (value) {
                  userName = value;
                },
                validate: (String value) {
                  value.isEmpty ? 'not valid' : null;
                },
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustTextField(
                hint: 'Email',
                onSave: (value) {
                  email = value;
                },
                validate: (value) {
                  value.isEmpty ? 'not valid' : null;
                },
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustTextField(
                hint: 'password',
                onSave: (value) {
                  password = value;
                },
                validate: (value) {
                  value.isEmpty ? 'not valid' : null;
                },
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
                text: 'SIGN UP',
                textcolor: Colors.white,
              ),

              // CustomeButton(
              //   buttoncolor: Colors.white,
              //   onpressed: () {},
              //   text: 'sign in with google',
              //   textcolor: Colors.black,
              // ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomeText(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    text: "ALready have an account ?",
                    size: 15,
                  ),
                  CustomeText(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    text: "Sign In Now",
                    size: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
