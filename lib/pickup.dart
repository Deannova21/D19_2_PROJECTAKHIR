import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pertemuan7_crud/controller.dart';
import 'package:pertemuan7_crud/costum_alert.dart';
import 'package:pertemuan7_crud/item_card.dart';
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

class PickupPage extends StatefulWidget {
  const PickupPage({Key? key}) : super(key: key);

  @override
  State<PickupPage> createState() => _PickPageState();
}

class _PickPageState extends State<PickupPage> {
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
            'Form Pemesan / Self Pick-Up',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [
                //// VIEW DATA HERE
                StreamBuilder<QuerySnapshot>(
                  stream: users.snapshots(),
                  builder: (_, snapshot) {
                    return (snapshot.hasData)
                        ? Column(
                            children: snapshot.data!.docs
                                .map((e) => ItemCard(
                                        e.get('name'),
                                        e.get('pcs'),
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
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3)
                  ]),
                  width: double.infinity,
                  height: 150,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              controller: namaPemesanController,
                              decoration: InputDecoration(hintText: "Name"),
                            ),
                            TextField(
                              controller: berapaCupController,
                              decoration:
                                  InputDecoration(hintText: "Berapa Pcs"),
                              keyboardType: TextInputType.number,
                            ),
                            TextField(
                              controller: alamatController,
                              decoration: InputDecoration(hintText: "Notes"),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  'Buat Pesanan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  CostumAlert(
                                      context, namaPemesanController.text);
                                  users.add({
                                    "name": namaPemesanController.text,
                                    "alamat": alamatController.text,
                                    "pcs": int.tryParse(
                                            berapaCupController.text) ??
                                        -1,
                                  });

                                  namaPemesanController.text = '';
                                  berapaCupController.text = '';
                                  alamatController.text = '';
                                }),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
