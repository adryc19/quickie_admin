// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qadmin/forms/main_form.dart';
import 'package:qadmin/forms/sign_in_form.dart';

DocumentSnapshot? userData;
bool pObscure = true;
bool cpObscure = true;
var quickieUser = FirebaseAuth.instance.currentUser;
final fbAuth = FirebaseAuth.instance;
final fbStore = FirebaseFirestore.instance;
final functions = Functions();
dynamic name;

class Functions {
  void getCurrentUser() {
    final user = fbAuth.currentUser;
    if (user != null) {
      quickieUser = user;
    }
  }

  void signIn(
    context,
    email,
    password,
  ) async {
    try {
      await fbAuth
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((value) => {
                Navigator.pushNamedAndRemoveUntil(
                    context, MainForm.id, (route) => false)
              });
    } catch (e) {
      errorBox(
        context,
        e,
      );
    }
  }

  void resetPassword(email) {
    fbAuth.sendPasswordResetEmail(email: email);
  }

  void signOut(context) async {
    try {
      fbAuth.signOut();
      Navigator.pushNamedAndRemoveUntil(
          context, SignInForm.id, (route) => false);
    } catch (e) {
      errorBox(context, e);
    }
  }

  void errorBox(
    context,
    e,
  ) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: const [
              Icon(Icons.warning),
              SizedBox(width: 5),
              Text("Oops!"),
            ],
          ),
          content: Text(e.toString()),
        );
      },
    );
  }

  void notErrorBox(
    context,
    e,
  ) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: const [
              Icon(Icons.celebration),
              SizedBox(width: 5),
              Text("Yay!"),
            ],
          ),
          content: Text(e.toString()),
        );
      },
    );
  }

  void sendUpdate(
    subject,
    message,
    rName,
    rEmail,
    mode,
  ) async {
    fbStore
        .collection("Users")
        .doc(rEmail)
        .collection("Updates")
        .doc(
            "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}")
        .set(
      {
        "subject": subject,
        "message": message,
        "rName": rName,
        "rEmail": rEmail,
        "mode": mode,
        "date":
            "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}",
      },
    );
    await fbStore
        .collection("Users")
        .doc(quickieUser!.email)
        .collection("History")
        .doc(
            "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}")
        .set(
      {
        "activity": "Send Update",
        "subject": subject,
        "message": message,
        "rName": rName,
        "rEmail": rEmail,
        "mode": mode,
        "date":
            "${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}",
      },
    );
  }
}
