import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan7_crud/main_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: const Icon(Icons.arrow_back),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: const ProfileBodyScreen(),
    );
  }
}

class ProfileBodyScreen extends StatelessWidget {
  const ProfileBodyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15.0,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Color(0xffee8301)),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/muka_denop.png'),
              radius: 50.0,
            ),
          ),
          Text('Geraldo Christoper',
              style: GoogleFonts.poppins(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text('geraldocp15@gmail.com'),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(12.4)),
            padding: const EdgeInsets.all(12.0),
            margin: EdgeInsets.only(left: 28.0, right: 28.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text('No Kontak'),
                    Spacer(),
                    Text('082252224392'),
                    SizedBox(
                      width: 9.0,
                    ),
                    Icon(Icons.copy),
                  ],
                ),
                const Divider(),
                Row(
                  children: const [
                    Text('Status Keaktifan'),
                    Spacer(),
                    Text('Aktif'),
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  children: const [
                    Text('Status'),
                    Spacer(),
                    Text('Pembeli'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0),
            child: Row(
              children: const [
                Text('Nama Lengkap'),
                Spacer(),
                Text('Geraldo Christoper Palinggi')
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0),
            child: Row(
              children: const [Text('Nama Panggilan'), Spacer(), Text('Aldo')],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0),
            child: Row(
              children: const [
                Text('Alamat'),
              ],
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0),
            child: Row(
              children: const [
                Text(
                    'Jalan Damanhuri Gang Ogok, Jalan Bhineka Poros Rumah Sebela Kiri Warna Putih Lantai 2'),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            child: Column(children: [
              Row(
                children: [
                  ElevatedButton(
                      child: Text("Kembali"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return MyHomePage();
                        }));
                      }),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
