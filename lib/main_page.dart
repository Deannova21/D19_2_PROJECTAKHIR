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
import 'package:pertemuan7_crud/pickup.dart';
import 'package:pertemuan7_crud/promo1.dart';
import 'package:pertemuan7_crud/promo2.dart';
import 'package:pertemuan7_crud/promo3.dart';
import 'package:pertemuan7_crud/promo4.dart';
import 'package:pertemuan7_crud/promo5.dart';
import 'package:pertemuan7_crud/promo6.dart';
import 'package:pertemuan7_crud/snack.dart';
import 'package:pertemuan7_crud/textcontroller.dart';

import 'nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2200,
      splash: 'assets/logo.png',
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: const Color(0xFFFFAD61),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final CounterController c = Get.put(CounterController());
  final SwitchController v = Get.put(SwitchController());
  final GetxTextController tc = Get.put(GetxTextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(child: Image.asset("assets/muka_denop.png")),
          ),
          title: Text("Halo, ${tc.nameEditingController.text}")),
      endDrawer: DrawerWidget(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/promo1.png"),
                            width: 169,
                            height: 169,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Promo1Page();
                            }));
                          }),
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/promo2.png"),
                            width: 169,
                            height: 169,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Promo2Page();
                            }));
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/promo3.png"),
                            width: 169,
                            height: 169,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Promo3Page();
                            }));
                          }),
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/promo4.png"),
                            width: 169,
                            height: 169,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Promo4Page();
                            }));
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/promo5.png"),
                            width: 169,
                            height: 169,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Promo5Page();
                            }));
                          }),
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/promo6.png"),
                            width: 169,
                            height: 169,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Promo6Page();
                            }));
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/promo7.png"),
                            width: 169,
                            height: 169,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return Promo1Page();
                            }));
                          }),
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/snack.png"),
                            width: 169,
                            height: 169,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return snack();
                            }));
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          child: Text("Kembali"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return LoginPage();
                            }));
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BeliPage extends StatelessWidget {
  BeliPage({Key? key}) : super(key: key);
  final CounterController c = Get.put(CounterController());
  final SwitchController v = Get.put(SwitchController());
  final GetxTextController tc = Get.put(GetxTextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(child: Image.asset("assets/muka_denop.png")),
          ),
          title: Text("Halo, ${tc.nameEditingController.text}")),
      endDrawer: DrawerWidget(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/delivery.png"),
                            width: 345,
                            height: 345,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return FormPage();
                            }));
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          child: Text("Delivery"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return FormPage();
                            }));
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                          child: Image(
                            image: AssetImage("assets/pickup.png"),
                            width: 345,
                            height: 345,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return PickupPage();
                            }));
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          child: Text("Self Pick-Up"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return PickupPage();
                            }));
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
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
            'Form Pemesan / Delivery',
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
                                      e.get('alamat'),
                                      onUpdate: () {
                                        users
                                            .doc(e.id)
                                            .update({'pcs': e.get('pcs') + 1});
                                      },
                                    ))
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
                              decoration: InputDecoration(hintText: "Alamat"),
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
