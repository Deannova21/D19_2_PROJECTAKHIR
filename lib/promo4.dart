import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pertemuan7_crud/controller.dart';
import 'package:pertemuan7_crud/main_page.dart';
import 'package:pertemuan7_crud/textcontroller.dart';

class Promo4Page extends StatelessWidget {
  Promo4Page({Key? key}) : super(key: key);
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
                      image: AssetImage("assets/promo6.png"),
                      width: 400,
                      height: 400,
                    ),
                    Text(
                      "Pizza Gaple 4",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "RP.120.000,-",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "1 Slash Pizza 1 Big Burger",
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
