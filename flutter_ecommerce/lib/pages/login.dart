// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/register.dart';
import 'package:flutter_ecommerce/shared/colors.dart';
import 'package:flutter_ecommerce/shared/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 64,
                ),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: decorationTextField.copyWith(
                      hintText: 'Enter Your Email :',
                    )),
                const SizedBox(
                  height: 33,
                ),
                TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: decorationTextField.copyWith(
                      hintText: 'Enter Your Password :',
                    )),
                const SizedBox(
                  height: 33,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNBlue),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                      onPressed: () {
                        
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => const Register()));
                      },
                      
                      child:
                          Text('Sign up', style: TextStyle(color: Colors.black,fontSize: 20)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
