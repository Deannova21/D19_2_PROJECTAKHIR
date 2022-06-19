import 'package:flutter/material.dart';

class desc extends StatelessWidget {
  const desc({Key? key}) : super(key: key);

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
                "Description Promo",
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
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/promo1.png")))),
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
                    height: 45,
                    margin: EdgeInsets.only(top: 10),
                    color: Color.fromARGB(255, 255, 94, 0),
                    child: Text(
                      "Promo Gaple 1",
                      style: TextStyle(fontSize: 29),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 300,
                    height: 50,
                    child: TextButton(
                      onPressed: () => gaple1(context),
                      child: Text(
                        "Detail Promo",
                        style: TextStyle(fontSize: 29),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFFAD61),
                      ),
                    )),
              ],
            ),

            //kedua

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/promo2.png")))),
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
                    height: 45,
                    margin: EdgeInsets.only(top: 10),
                    color: Color.fromARGB(255, 255, 94, 0),
                    child: Text(
                      "Promo Gaple 2",
                      style: TextStyle(fontSize: 29),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 300,
                    height: 50,
                    child: TextButton(
                      onPressed: () => gaple2(context),
                      child: Text(
                        "Detail Promo",
                        style: TextStyle(fontSize: 29),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFFAD61),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/snack.png")))),
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
                    height: 45,
                    margin: EdgeInsets.only(top: 10),
                    color: Color.fromARGB(255, 255, 94, 0),
                    child: Text(
                      "Promo Gaple 3",
                      style: TextStyle(fontSize: 29),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    width: 300,
                    height: 50,
                    child: TextButton(
                      onPressed: () => gaple3(context),
                      child: Text(
                        "Detail Promo",
                        style: TextStyle(fontSize: 29),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFFAD61),
                      ),
                    )),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/promo6.png")))),
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
                    height: 45,
                    margin: EdgeInsets.only(top: 10),
                    color: Color.fromARGB(255, 255, 94, 0),
                    child: Text(
                      "Promo Gaple 4",
                      style: TextStyle(fontSize: 29),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    width: 300,
                    height: 50,
                    child: TextButton(
                      onPressed: () => gaple4(context),
                      child: Text(
                        "Detail Promo",
                        style: TextStyle(fontSize: 29),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFFAD61),
                      ),
                    )),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/promo5.png")))),
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
                    height: 45,
                    margin: EdgeInsets.only(top: 10),
                    color: Color.fromARGB(255, 255, 94, 0),
                    child: Text(
                      "Promo Gaple 5",
                      style: TextStyle(fontSize: 29),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    width: 300,
                    height: 50,
                    child: TextButton(
                      onPressed: () => gaple3(context),
                      child: Text(
                        "Detail Promo",
                        style: TextStyle(fontSize: 29),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFFAD61),
                      ),
                    )),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/promo7.png")))),
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
                    height: 45,
                    margin: EdgeInsets.only(top: 10),
                    color: Color.fromARGB(255, 255, 94, 0),
                    child: Text(
                      "Promo Gaple 6",
                      style: TextStyle(fontSize: 29),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    width: 300,
                    height: 50,
                    child: TextButton(
                      onPressed: () => gaple3(context),
                      child: Text(
                        "Detail Promo",
                        style: TextStyle(fontSize: 29),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFFAD61),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void gaple1(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Promo Gaple 1"),
      content: Container(
        child: Text(
            "Disini Kita Memberikan Paprika Pizza Dan 1 Buah Milo Untuk Orang Yang Membelinya Dengan Harga Rp. 100.000"),
      ),
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }

  void gaple2(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Promo Gaple 2"),
      content: Container(
        child: Text(
            "Disini Kita Memberikan Mozarella Pizza Dan 1 Kentang Untuk Orang Yang Membeliny Dengan HARGA Rp. 90.000"),
      ),
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }

  void gaple3(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Promo Gaple 3"),
      content: Container(
        child: Text(
            "Promo Paling Murah Yang Dimana Kita Memberikan Snack-Snack Yang Ada 1 Kentang, 1 Milo, Dan 1 Makaroni Dengan Harga Rp.30.000"),
      ),
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }

  void gaple4(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Promo Gaple 4"),
      content: Container(
        child: Text(
            "Disini Kita Memberikan Promo Kenyang Yang Dimana Ada 2 Es Teh, 1 Kentang, 1 Burger, Dan 1 Slice Pizza Dengan Harga Rp.120.000"),
      ),
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }

  void gaple5(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Promo Gaple 5"),
      content: Container(
        child: Text(
            "Disini Kita Memberikan Big Promo Yang Ada 1 Big Mexican Pizza, 1 Botol Coca Cola, 1 Cup Macaroni, 1 Kentang, Dan 2 Big Hamburger  "),
      ),
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }

  void gaple6(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: Text("Promo Gaple 6"),
      content: Container(
        child: Text(
            "Disini Kita Kasih Promo Haus Yang Dimana Ada 4 Coca Cola, 1 Spaghetti, 1 Big Italian Pizza"),
      ),
    );

    showDialog(context: context, builder: (context) => alert);
    return;
  }
}
