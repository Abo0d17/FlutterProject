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
                 text: "Login",
                  size: 30,
                  color: Colors.purple,
                  bold: FontWeight.bold,
                ),
                // Text(
                //   "Login",
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.deepOrange,
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                label(
                  text: "Login And Browes our App",
                  color: Colors.purple,
                ),
                SizedBox(
                  height: 20,
                ),
                // TextFormField(
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     isDense: true,
                //     prefixIcon: Icon(Icons.email),
                //     suffixIcon: Icon(Icons.emergency_recording_outlined),
                //   ),
                //   keyboardType: TextInputType.emailAddress,
                //   autofocus: true,
                // ),

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
                    click:(){},
                  backColor: Colors.purple,
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
                      click: (){},
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
