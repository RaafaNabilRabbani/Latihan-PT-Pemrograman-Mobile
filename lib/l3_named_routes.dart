import 'package:flutter/material.dart';

// Halaman 1 (Home Route)
class L3HomePage extends StatelessWidget {
  const L3HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 3 - Named Routes Home'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Berpindah menggunakan named route dan mengirimkan argumen string
            Navigator.pushNamed(
              context,
              '/halaman_kedua',
              arguments: 'Halo Mas Rafa, argumen ini dikirim lewat Named Route!',
            );
          },
          child: const Text('Ke Halaman Kedua + Kirim Argumen'),
        ),
      ),
    );
  }
}

// Halaman 2 (Menerima Argumen)
class L3SecondPage extends StatelessWidget {
  const L3SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menerima argumen yang dikirim melalui routes
    final String argumen = ModalRoute.of(context)!.settings.arguments as String? ?? 'Tidak ada argumen';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 3 - Halaman Kedua'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Pesan Argumen yang Diterima:', style: TextStyle(color: Colors.grey, fontSize: 16)),
            const SizedBox(height: 10),
            Text(argumen, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman_ketiga');
              },
              child: const Text('Lanjut ke Halaman Ketiga'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman 3 (Halaman Ketiga)
class L3ThirdPage extends StatelessWidget {
  const L3ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Ketiga'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ini adalah Halaman Ketiga dari 3 halaman Named Routes.', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Kembali langsung ke halaman awal route '/'
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Kembali ke Menu Utama'),
            ),
          ],
        ),
      ),
    );
  }
}