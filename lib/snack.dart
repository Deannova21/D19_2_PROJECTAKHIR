import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pertemuan7_crud/costum_alert.dart';
import 'package:pertemuan7_crud/item_card.dart';
import 'package:pertemuan7_crud/main_page.dart';

class snack extends StatelessWidget {
  const snack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFAD61),
        title: Text("Gaple Pizza"),
      ),
      body: Container(
        width: width,
        height: height,
        color: const Color(0xFFFFAD61),
        child: ListView(
          children: [
            Container(
              width: 300,
              height: 100,
              color: Color(0xff111),
              alignment: Alignment.center,
              child: Text(
                "Kategori Snack",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/snack2.png")))),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.white,
                    child: Text(
                      "Fire Macaroni",
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/snack3.png")))),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.white,
                    child: Text(
                      "Salty Salad",
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/snack4.png")))),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.white,
                    child: Text(
                      "Bollu-Bollu Cappucino",
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/snack6.png")))),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.white,
                    child: Text(
                      "HOT DOG",
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/snack7.png")))),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 280,
                    height: 50,
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    color: Colors.white,
                    child: Text(
                      "3 Sosis Sausage",
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/snack8.png")))),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    color: Colors.white,
                    child: Text(
                      "Mocci Molly",
                      style:
                          TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Text("Pesan"),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return FormPage();
                      }));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
