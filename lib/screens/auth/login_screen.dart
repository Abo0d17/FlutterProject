import 'package:flutter/material.dart';
import 'package:sec_3/shared/components/tools.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  text: "Login",
                  size: 30,
                  color: Colors.grey[300]!,
                  bold: FontWeight.bold,
                ),
                SizedBox(
                  height: 10,
                ),
                label(
                  text: "Login And Browse our App",
                  color: Colors.grey[300]!,
                ),
                SizedBox(
                  height: 20,
                ),
                textBox(
                  labelText: "Phone",
                  hint: "Enter Your Phone",
                  suffixText: "+967",
                  autofocus: true,
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
                  txtColor: Colors.white,
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
