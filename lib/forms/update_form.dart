// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qadmin/forms/main_form.dart';
import 'package:qadmin/functions.dart';
import 'package:substring_highlight/substring_highlight.dart';

class UpdateForm extends StatefulWidget {
  static String id = "UpdateForm";

  @override
  State<UpdateForm> createState() => _UpdateFormState();
}

class _UpdateFormState extends State<UpdateForm> {
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController recipientController = TextEditingController();
  late List<String> autoCompleteEmailsData;

  Future fetchEmails() async {
    final String emailsStringData =
        await rootBundle.loadString("assets/emails.json");
    final List<dynamic> emails = jsonDecode(emailsStringData);
    final List<String> emailsData = emails.cast<String>();

    setState(
      () {
        autoCompleteEmailsData = emailsData;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    fetchEmails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        title: Text("Create an Update"),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextField(
                    controller: subjectController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Subject",
                      hintText: "Enter subject",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextField(
                    controller: messageController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "Message",
                      hintText: "Enter your message here",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Autocomplete(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text.isEmpty) {
                        return Iterable<String>.empty();
                      } else {
                        return autoCompleteEmailsData.where(
                          (element) => element.toLowerCase().contains(
                                textEditingValue.text.toLowerCase(),
                              ),
                        );
                      }
                    },
                    optionsViewBuilder:
                        (context, Function(String) onSelected, options) {
                      return Material(
                        elevation: 5,
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            final option = options.elementAt(index);

                            return ListTile(
                              title: SubstringHighlight(
                                text: option.toString(),
                                term: recipientController.text,
                                textStyleHighlight: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                              onTap: () => onSelected(option.toString()),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          itemCount: options.length,
                        ),
                      );
                    },
                    fieldViewBuilder:
                        (context, controller, focusNode, onEditingComplete) {
                      recipientController = controller;

                      return TextField(
                        controller: controller,
                        focusNode: focusNode,
                        onEditingComplete: onEditingComplete,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Recipient (Optional)",
                          hintText: "Enter recipient's corporate email",
                          border: OutlineInputBorder(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 2.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 2.4,
                        child: ElevatedButton(
                          onPressed: () {
                            if (subjectController.text.isEmpty) {
                              null;
                            } else if (messageController.text.isEmpty) {
                              null;
                            } else if (recipientController.text.isEmpty) {
                              null;
                            } else if (recipientController.text != "" &&
                                recipientController.text !=
                                    "202040094@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100037n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100147n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100190n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100052n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100022n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100080n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100003n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100109@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100114n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018105660n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100308n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100237n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100202n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100280n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100125n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100294n@psu.palawan.edu.ph" &&
                                recipientController.text !=
                                    "2018100304n@psu.palawan.edu.ph") {
                              functions.errorBox(
                                  context, "Corporate email is not recognized");
                            } else if (recipientController.text.isNotEmpty &&
                                    recipientController.text !=
                                        "202040094@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100037n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100147n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100190n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100052n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100022n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100080n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100003n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100109@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100114n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018105660n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100308n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100237n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100202n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100280n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100125n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100294n@psu.palawan.edu.ph" ||
                                recipientController.text !=
                                    "2018100304n@psu.palawan.edu.ph") {
                              if (recipientController.text ==
                                  "202040094@psu.palawan.edu.ph") {
                                name = "Adryc Allen F. Catapang";
                              } else if (recipientController.text ==
                                  "2018100037n@psu.palawan.edu.ph") {
                                name = "Angelika Joy Kunang";
                              } else if (recipientController.text ==
                                  "2018100147n@psu.palawan.edu.ph") {
                                name = "Bernie Ibanez";
                              } else if (recipientController.text ==
                                  "2018100190n@psu.palawan.edu.ph") {
                                name = "Celdyne Paimalan";
                              } else if (recipientController.text ==
                                  "2018100052n@psu.palawan.edu.ph") {
                                name = "Garry Earl Lontes";
                              } else if (recipientController.text ==
                                  "2018100022n@psu.palawan.edu.ph") {
                                name = "Gervene Angelic Talaver";
                              } else if (recipientController.text ==
                                  "2018100080n@psu.palawan.edu.ph") {
                                name = "John Carlo Sangalang";
                              } else if (recipientController.text ==
                                  "2018100003n@psu.palawan.edu.ph") {
                                name = "Jonaida Ringgaran";
                              } else if (recipientController.text ==
                                  "2018100109@psu.palawan.edu.ph") {
                                name = "Jonel Masarque";
                              } else if (recipientController.text ==
                                  "2018100114n@psu.palawan.edu.ph") {
                                name = "Kim Cortezano";
                              } else if (recipientController.text ==
                                  "2018105660n@psu.palawan.edu.ph") {
                                name = "Kristian Jarrell Estabillo";
                              } else if (recipientController.text ==
                                  "2018100308n@psu.palawan.edu.ph") {
                                name = "Kristy Ann Andres";
                              } else if (recipientController.text ==
                                  "2018100237n@psu.palawan.edu.ph") {
                                name = "Lady Mae Molijon";
                              } else if (recipientController.text ==
                                  "2018100202n@psu.palawan.edu.ph") {
                                name = "Michelle Lyn Morales";
                              } else if (recipientController.text ==
                                  "2018100280n@psu.palawan.edu.ph") {
                                name = "recipientController Molejon";
                              } else if (recipientController.text ==
                                  "2018100125n@psu.palawan.edu.ph") {
                                name = "Rachiell Salazar";
                              } else if (recipientController.text ==
                                  "2018100294n@psu.palawan.edu.ph") {
                                name = "Renz Theo Ramirez";
                              } else if (recipientController.text ==
                                  "2018100304n@psu.palawan.edu.ph") {
                                name = "Ruby Jane Depaz";
                              }
                              functions.sendUpdate(
                                subjectController.text,
                                messageController.text,
                                name,
                                recipientController.text,
                                "Individual",
                              );
                              Navigator.pushNamedAndRemoveUntil(
                                  context, MainForm.id, (route) => false);
                            }
                          },
                          child: Text(
                            "Send to Recepient",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: recipientController.text.isEmpty
                                ? MaterialStateProperty.all(Colors.grey)
                                : MaterialStateProperty.all(
                                    Colors.orange.shade600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 2.4,
                        child: ElevatedButton(
                          onPressed: () {
                            if (subjectController.text.isEmpty) {
                              null;
                            } else if (messageController.text.isEmpty) {
                              null;
                            } else if (recipientController.text.isNotEmpty) {
                              null;
                            } else if (recipientController.text.isEmpty) {
                              List<String> emails = [
                                "202040094@psu.palawan.edu.ph",
                                "2018100037n@psu.palawan.edu.ph",
                                "2018100147n@psu.palawan.edu.ph",
                                "2018100190n@psu.palawan.edu.ph",
                                "2018100052n@psu.palawan.edu.ph",
                                "2018100022n@psu.palawan.edu.ph",
                                "2018100080n@psu.palawan.edu.ph",
                                "2018100003n@psu.palawan.edu.ph",
                                "2018100109@psu.palawan.edu.ph",
                                "2018100114n@psu.palawan.edu.ph",
                                "2018105660n@psu.palawan.edu.ph",
                                "2018100308n@psu.palawan.edu.ph",
                                "2018100237n@psu.palawan.edu.ph",
                                "2018100202n@psu.palawan.edu.ph",
                                "2018100280n@psu.palawan.edu.ph",
                                "2018100125n@psu.palawan.edu.ph",
                                "2018100294n@psu.palawan.edu.ph",
                                "2018100304n@psu.palawan.edu.ph",
                              ];
                              for (var email in emails) {
                                functions.sendUpdate(
                                  subjectController.text,
                                  messageController.text,
                                  "PSU Narra Students",
                                  email,
                                  "Everyone",
                                );
                                Navigator.pushNamedAndRemoveUntil(
                                    context, MainForm.id, (route) => false);
                              }
                            }
                          },
                          child: Text(
                            "Send to Everyone",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: recipientController.text.isNotEmpty
                                ? MaterialStateProperty.all(Colors.grey)
                                : MaterialStateProperty.all(
                                    Colors.orange.shade600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
