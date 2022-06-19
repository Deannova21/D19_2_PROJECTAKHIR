import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pertemuan7_crud/controller.dart';
import 'package:pertemuan7_crud/main_page.dart';
import 'package:pertemuan7_crud/textcontroller.dart';

class Promo6Page extends StatelessWidget {
  Promo6Page({Key? key}) : super(key: key);
  final CounterController c = Get.put(CounterController());
  final SwitchController v = Get.put(SwitchController());
  final GetxTextController tc = Get.put(GetxTextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Halo, ${tc.nameEditingController.text}")),
        body: Container(
            child: Column(children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/promo7.png"),
                      width: 400,
                      height: 400,
                    ),
                    Text(
                      "Pizza Gaple 6",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "RP.150.000,-",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "Eat Pizza With A friend",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: ElevatedButton(
                          child: Text("Memesan"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return FormPage();
                            }));
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: ElevatedButton(
                          child: Text("Kembali"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return MyHomePage();
                            }));
                          }),
                    )
                  ],
                ),
              ],
            ),
          ),
        ])));
  }
}
