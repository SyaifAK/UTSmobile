import 'package:flutter/material.dart';
import './profil.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Text
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Aplikasi Sederhana ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0), // Ubah sesuai kebutuhan Anda
            ),
            // Gambar
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/dash.png'),
            ),

            Center(
              child: Container(
                color: Colors.transparent, // Warna latar belakang (opsional)
                child: Padding(
                  padding: EdgeInsets.all(20.0), // Ubah sesuai kebutuhan Anda
                ),
              ),
            ),
            // List View Horizontal
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Card(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Image.asset('assets / images / sy.jpg'),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text('Item 2'),
                      ),
                    ),
                  ),
                  // Tambahkan item lain di sini
                ],
              ),
            ),
            // List View Vertical + Card View
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Detail 1'),
                  ),
                  ListTile(
                    title: Text('Detail 2'),
                  ),
                  // Tambahkan detail lain di sini
                ],
              ),
            ),
            // Navigator
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk pergi ke halaman lain (navigator)
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        ProfilePage(), // Ganti dengan nama halaman lain yang sesuai
                  ),
                );
              },
              child: Text('Pergi ke Halaman Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
