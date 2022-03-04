// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qadmin/forms/about_form.dart';
import 'package:qadmin/forms/help_form.dart';
import 'package:qadmin/forms/history_form.dart';
import 'package:qadmin/forms/invoices_form.dart';
import 'package:qadmin/forms/main_form.dart';
import 'package:qadmin/forms/sign_in_form.dart';
import 'package:qadmin/forms/update_form.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignInForm.id,
      routes: {
        InvoicesForm.id: (context) => InvoicesForm(),
        HistoryForm.id: (context) => HistoryForm(),
        SignInForm.id: (context) => SignInForm(),
        UpdateForm.id: (context) => UpdateForm(),
        AboutForm.id: (context) => AboutForm(),
        HelpForm.id: (context) => HelpForm(),
        MainForm.id: (context) => MainForm(),
      },
    );
  }
}
