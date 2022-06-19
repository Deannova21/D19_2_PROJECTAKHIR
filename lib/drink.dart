import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pertemuan7_crud/costum_alert.dart';
import 'package:pertemuan7_crud/item_card.dart';
import 'package:pertemuan7_crud/itemdrink.dart';

class drink extends StatelessWidget {
  const drink({Key? key}) : super(key: key);

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
              width: width,
              height: 100,
              color: Color(0xff111),
              alignment: Alignment.center,
              child: Text(
                "Kategori Minuman",
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
                                image: AssetImage("assets/drinks2.png")))),
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
                      "Lime Icce",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                                image: AssetImage("assets/drinks3.png")))),
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
                      "Orange Icce",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                                image: AssetImage("assets/drinks4.png")))),
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
                      "Hot Cappucinno",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                                image: AssetImage("assets/drinks5.png")))),
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
                      "Coklat Cips Icce",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                                image: AssetImage("assets/drinks7.png")))),
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
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    color: Colors.white,
                    child: Text(
                      "Lime Yellow Icce",
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
                                image: AssetImage("assets/drinks8.png")))),
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
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    color: Colors.white,
                    child: Text(
                      "MilkShake Icce",
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
                        return FormDrinkPage();
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

class FormDrinkPage extends StatefulWidget {
  const FormDrinkPage({Key? key}) : super(key: key);

  @override
  State<FormDrinkPage> createState() => _FormDrinkPageState();
}

class _FormDrinkPageState extends State<FormDrinkPage> {
  String namaPemesan = "", berapaCup = "", jenisCup = "";
  final namaPemesanController = TextEditingController();
  final berapaCupController = TextEditingController();
  final jenisCupController = TextEditingController();
  bool isActive = false;

  @override
  void dispose() {
    // TODO: implement dispose
    namaPemesanController.dispose();
    berapaCupController.dispose();
    jenisCupController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection("users");
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Form Pemesan / PickUp',
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
                              controller: jenisCupController,
                              decoration:
                                  InputDecoration(hintText: "Jenis Cup"),
                            ),
                          ],
                        ),
                      ),
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
                              CostumAlert(context, namaPemesanController.text);
                              users.add({
                                "name": namaPemesanController.text,
                                "alamat": jenisCupController.text,
                                "pcs": int.tryParse(berapaCupController.text) ??
                                    -1,
                              });

                              namaPemesanController.text = '';
                              jenisCupController.text = '';
                              berapaCupController.text = '';
                            }),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
