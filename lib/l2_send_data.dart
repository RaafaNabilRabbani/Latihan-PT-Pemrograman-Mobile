import 'package:flutter/material.dart';

// Model Data Produk
class Produk {
  final String nama;
  final String harga;
  const Produk({required this.nama, required this.harga});
}

// Halaman Daftar Produk
class L2DaftarProdukPage extends StatelessWidget {
  const L2DaftarProdukPage({super.key});

  final List<Produk> daftarProduk = const [
    Produk(nama: 'Laptop ASUS ROG', harga: 'Rp 12.500.000'),
    Produk(nama: 'Mouse Wireless Logitech', harga: 'Rp 250.000'),
    Produk(nama: 'Keyboard Mechanical RGB', harga: 'Rp 650.000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: daftarProduk.length,
        itemBuilder: (context, index) {
          final produk = daftarProduk[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(produk.nama, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(produk.harga),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Navigasi ke Halaman Detail sambil mengirim objek 'produk'
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => L2DetailPage(produk: produk),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// Halaman Detail Produk (Menerima Data)
class L2DetailPage extends StatelessWidget {
  final Produk produk;
  const L2DetailPage({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nama Produk:', style: TextStyle(color: Colors.grey, fontSize: 16)),
            Text(produk.nama, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text('Harga Produk:', style: TextStyle(color: Colors.grey, fontSize: 16)),
            Text(produk.harga, style: const TextStyle(fontSize: 22, color: Colors.green, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}