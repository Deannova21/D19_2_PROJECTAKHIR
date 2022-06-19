import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pertemuan7_crud/controller.dart';
import 'package:pertemuan7_crud/costum_alert.dart';
import 'package:pertemuan7_crud/item_card.dart';
import 'package:pertemuan7_crud/itemcard.dart';
import 'package:pertemuan7_crud/login_page.dart';
import 'package:pertemuan7_crud/promo1.dart';
import 'package:pertemuan7_crud/promo2.dart';
import 'package:pertemuan7_crud/promo3.dart';
import 'package:pertemuan7_crud/promo4.dart';
import 'package:pertemuan7_crud/promo5.dart';
import 'package:pertemuan7_crud/promo6.dart';
import 'package:pertemuan7_crud/snack.dart';
import 'package:pertemuan7_crud/textcontroller.dart';

import 'nav_bar.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  String namaPemesan = "", berapaCup = "", jenisCup = "";
  final namaPemesanController = TextEditingController();
  final berapaCupController = TextEditingController();
  final alamatController = TextEditingController();
  bool isActive = false;

  @override
  void dispose() {
    // TODO: implement dispose
    namaPemesanController.dispose();
    berapaCupController.dispose();
    alamatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halaman Admin',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(children: [
        ListView(
          children: [
            //// VIEW DATA HERE
            StreamBuilder<QuerySnapshot>(
              stream: users.snapshots(),
              builder: (_, snapshot) {
                return (snapshot.hasData)
                    ? Column(
                        children: snapshot.data!.docs
                            .map((e) => Item_Card(e.get('name'), e.get('pcs'),
                                    e.get('alamat'), onUpdate: () {
                                  users
                                      .doc(e.id)
                                      .update({'pcs': e.get('pcs') + 1});
                                }, onDelete: () {
                                  users.doc(e.id).delete();
                                }))
                            .toList(),
                      )
                    : Text('Loading...');
              },
            ),

            SizedBox(height: 150)
          ],
        ),
      ]),
    );
  }
}
