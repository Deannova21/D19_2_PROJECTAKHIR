import 'package:flutter/material.dart';

class pizza extends StatelessWidget {
  const pizza({Key? key}) : super(key: key);

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
                "Kategori Pizza",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
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
                                image: AssetImage("assets/pizza1.png")))),
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
                      "Pizza Sosis Merah",
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
                                image: AssetImage("assets/pizza3.png")))),
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
                      "Pizza Kurma",
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
                                image: AssetImage("assets/pizza4.png")))),
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
                      "Pizza Mozzarella",
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
                                image: AssetImage("assets/pizza5.png")))),
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
                      "Pizza Sosis Rempah",
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
                                image: AssetImage("assets/pizza6.png")))),
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
                    margin: EdgeInsets.only(top: 10,bottom: 15),
                    color: Colors.white,
                    child: Text(
                      "Pizza Mexico",
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
                                image: AssetImage("assets/pizza7.png")))),
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
                    margin: EdgeInsets.only(top: 10,bottom: 15),
                    color: Colors.white,
                    child: Text(
                      "Pizza Italiano",
                      style:
                          TextStyle(fontSize: 29),
                    ))
              ],
            ),
          ],
        ),
      ),

    );
  }
}
