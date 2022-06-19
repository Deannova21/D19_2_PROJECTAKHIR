import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan7_crud/main_page.dart';
import 'package:pertemuan7_crud/textcontroller.dart';
import 'package:pertemuan7_crud/main.dart';

import 'controller.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final CounterController c = Get.put(CounterController());
  final SwitchController v = Get.put(SwitchController());
  final GetxTextController tc = Get.put(GetxTextController());
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFAD61),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/logo.png",
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 10),
            const Text(
              "Pizza Delivery",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Silahkan Login Sesuai Nama anda",
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
              controller: tc.nameEditingController,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: value,
                  onChanged: (bool? newValue) {
                    setState(() {
                      value = !value;
                    });
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Text("Keep me logged in"),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF0041EA),
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 25,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: const Text("LOGIN"),
            ),
          ],
        ),
      ),
    );
  }
}
