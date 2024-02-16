import 'package:flutter/material.dart';
import 'package:sec_3/shared/components/tools.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            // scrollDirection:Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                label(
                  text: "Sign Up",
                  size: 30,
                  color: Colors.black,
                  bold: FontWeight.bold,
                ),
                SizedBox(
                  height: 10,
                ),
                label(
                  text: "Sign Up And Browse our App",
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                textBox(
                    hint: "First Name",
                    labelText: "First Name",
                    autofocus: true,
                    keyBoard: TextInputType.name,
                    prefixIcon: Icons.person),
                SizedBox(
                  height: 20,
                ),
                textBox(
                    hint: "Last Name",
                    labelText: "Last Name",
                    keyBoard: TextInputType.name,
                    prefixIcon: Icons.person),
                SizedBox(
                  height: 20,
                ),
                textBox(
                  labelText: "Phone",
                  hint: "Enter Your Phone",
                  suffixText: "+967",
                  keyBoard: TextInputType.phone,
                  prefixIcon: Icons.phone_android,
                ),
                SizedBox(
                  height: 20,
                ),
                textBox(
                  labelText: "Password",
                  hint: "Enter Your Password",
                  suffixIcon: Icons.visibility,
                  keyBoard: TextInputType.visiblePassword,
                  prefixIcon: Icons.password,
                ),
                SizedBox(
                  height: 20,
                ),
                button(
                  text: "Login",
                  click: () {},
                  backColor: Colors.grey[300]!,
                  width: double.infinity,
                  radius: 10,
                  txtColor: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have an Account?"),
                    textButton(
                      text: "Register",
                      click: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
