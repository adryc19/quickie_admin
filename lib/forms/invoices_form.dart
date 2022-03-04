// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:qadmin/functions.dart';
import 'package:qadmin/widgets/invoice_widget.dart';

class InvoicesForm extends StatelessWidget {
  static String id = "InvoicesForm";

  final Stream<QuerySnapshot> invoices = FirebaseFirestore.instance
      .collection("Users")
      .doc(quickieUser!.email)
      .collection("Invoices")
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        title: Text("Invoices"),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: invoices,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              color: Colors.white,
            );
          } else {
            return ListView.builder(
              shrinkWrap: true,
              reverse: true,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return InvoiceWidget(
                  snapshot.data!.docs[index]["name"],
                  "${snapshot.data!.docs[index]["sem"]} ${snapshot.data!.docs[index]["fee"]} ${snapshot.data!.docs[index]["activity"]}",
                  snapshot.data!.docs[index]["status"],
                  snapshot.data!.docs[index]["date"],
                  "${snapshot.data!.docs[index]["pay"]} PHP",
                );
              },
            );
          }
        },
      ),
    );
  }
}
