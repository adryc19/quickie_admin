// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, implementation_imports, avoid_print

import 'package:flutter/material.dart';
import 'package:qadmin/functions.dart';

class SignInForm extends StatefulWidget {
  static String id = "SignInForm";

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        title: Image.asset(
          "assets/q.png",
          height: 40,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.person),
                  labelText: "Email",
                ),
              ),
              TextField(
                controller: passwordController,
                obscureText: pObscure,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        if (pObscure == false) {
                          pObscure = true;
                        } else if (pObscure == true) {
                          pObscure = false;
                        }
                      });
                    },
                    icon: pObscure
                        ? Icon(Icons.remove_red_eye_outlined)
                        : Icon(Icons.remove_red_eye),
                  ),
                  labelText: "Password",
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.orange.shade300),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    if (emailController.text.isEmpty) {
                      functions.errorBox(
                          context, "Please enter an email address");
                    } else if (!emailController.text.contains("psunarra")) {
                      functions.errorBox(
                          context, "Please enter a valid admin email");
                    } else if (passwordController.text.isEmpty) {
                      functions.errorBox(context, "Please enter your password");
                    } else if (passwordController.text.length < 8) {
                      functions.errorBox(
                          context, "Must contain at least 8 characters");
                    } else if (!passwordController.text
                        .contains(RegExp(r'[a-z]'))) {
                      functions.errorBox(
                          context, "Must contain at least 1 lowercase");
                    } else if (!passwordController.text
                        .contains(RegExp(r'[A-Z]'))) {
                      functions.errorBox(
                          context, "Must contain at least 1 uppercase");
                    } else if (!passwordController.text
                        .contains(RegExp(r'[0-9]'))) {
                      functions.errorBox(
                          context, "Must contain at least 1 number");
                    } else if (!passwordController.text
                        .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      functions.errorBox(
                          context, "Must contain at least 1 symbol");
                    } else {
                      functions.signIn(
                        context,
                        emailController.text,
                        passwordController.text,
                      );
                    }
                  },
                  child: Text("Sign in"),
                ),
              ),
              SizedBox(
                height: 30,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {
                    if (emailController.text == "ptcpsunarra@gmail.com" ||
                        emailController.text == "csgpsunarra@gmail.com") {
                      functions.notErrorBox(context,
                          "We have sent a reset password link to your gmail account where you can create your new password.");
                      functions.resetPassword(emailController.text);
                    } else {
                      functions.errorBox(
                          context, "Please verify email on your account");
                    }
                  },
                  child: Text("Reset Password"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
