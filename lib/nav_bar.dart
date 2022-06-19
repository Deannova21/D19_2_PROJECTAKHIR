import 'package:pertemuan7_crud/admin.dart';
import 'package:pertemuan7_crud/drink.dart';
import 'package:pertemuan7_crud/main_page.dart';
import 'package:pertemuan7_crud/pizza_kategori.dart';
import 'package:pertemuan7_crud/profile_screen.dart';
import 'package:pertemuan7_crud/snack.dart';
import 'package:pertemuan7_crud/desc.dart';
import 'package:pertemuan7_crud/snack.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              "Kategori",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.man),
            title: Text("Profil"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return ProfileScreen();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text("PIZZA"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return pizza();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text("SNACK"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return snack();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text("DRINK"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return drink();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text("Deskripsi Promo"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return desc();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text("Admin"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return AdminPage();
              }));
            },
          ),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/logo.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: null /* add child content here */,
    );
  }
}
