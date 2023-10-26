import 'package:flutter/material.dart';
import 'package:latihan/dashboard/dashboard.dart';
import 'package:latihan/dashboard/profil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/Profil.png',
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Selamat datang di Halaman Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Kata Sandi',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk pengecekan login di sini
                      // Jika login berhasil, arahkan pengguna ke halaman dashboard
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => Dashboard(),
                        ),
                      );
                    },
                    child: Text('Login'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Tambahkan logika untuk pergi ke halaman pendaftaran
                    },
                    child: Text('Belum punya akun? Register'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'atau masuk dengan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            // Tambahkan logika untuk masuk dengan Google
                          },
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/go.png', // Ganti dengan path gambar logo Google
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 10),
                              Text('Google'),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Tambahkan logika untuk masuk dengan Facebook
                          },
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/fb.png', // Ganti dengan path gambar logo Facebook
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 10),
                              Text('Facebook'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Opsi lain untuk masuk (misalnya, masuk dengan akun lain)
          ],
        ),
      ),
    );
  }
}
