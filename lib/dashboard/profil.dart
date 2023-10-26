import 'package:flutter/material.dart';
import 'package:latihan/dashboard/dashboard.dart';
import './film.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Gambar Profil
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/sy.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Nama Pengguna
            Text(
              'Syaif Al Khalim',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Info Tambahan
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Email: rismanhamzah@gmail.com\nNo. Telp: 0895391533232',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            // Tombol Edit Profil
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk mengedit profil
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Dashboard(), // Ganti dengan nama halaman lain yang sesuai
                  ),
                );
              },
              child: Text('Kembali ke Dashboard'),
            ),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk mengedit profil
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Film(), // Ganti dengan nama halaman lain yang sesuai
                  ),
                );
              },
              child: Text('Daftar Film'),
            ),
          ],
        ),
      ),
    );
  }
}
