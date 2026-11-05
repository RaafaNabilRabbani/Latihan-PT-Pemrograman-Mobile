import 'package:flutter/material.dart';
import 'l1_push_pop.dart';
import 'l2_send_data.dart';
import 'l3_named_routes.dart';
import 'bonus_bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Navigasi Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuUtamaPage(),
        '/halaman_pertama': (context) => const L3HomePage(),
        '/halaman_kedua': (context) => const L3SecondPage(),
        '/halaman_ketiga': (context) => const L3ThirdPage(),
      },
    );
  }
}

class MenuUtamaPage extends StatelessWidget {
  const MenuUtamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama Tugas Navigasi'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Pilih Menu:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Tombol Push & Pop
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const L1HomePage()));
              },
              child: const Text('Push & Pop (Beranda & Tentang)'),
            ),
            const SizedBox(height: 12),

            // Tombol Produk
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const L2DaftarProdukPage()));
              },
              child: const Text('Kirim Data Produk'),
            ),
            const SizedBox(height: 12),

            // Tombol Route
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/halaman_pertama');
              },
              child: const Text('Named Routes & Argumen'),
            ),
            const SizedBox(height: 12),

            // Tombol Navbar
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BonusBottomNavPage()));
              },
              child: const Text('Bottom Navigation Bar'),
            ),
          ],
        ),
      ),
    );
  }
}