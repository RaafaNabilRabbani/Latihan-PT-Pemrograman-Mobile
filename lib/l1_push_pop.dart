import 'package:flutter/material.dart';

// Halaman Beranda
class L1HomePage extends StatelessWidget {
  const L1HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Beranda'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Berpindah ke Halaman Tentang menggunakan push
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const L1TentangPage()),
            );
          },
          child: const Text('Ke Halaman Tentang'),
        ),
      ),
    );
  }
}

// Halaman Tentang
class L1TentangPage extends StatelessWidget {
  const L1TentangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Tentang'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Kembali ke halaman sebelumnya menggunakan pop
            Navigator.pop(context);
          },
          child: const Text('Kembali ke Beranda'),
        ),
      ),
    );
  }
}