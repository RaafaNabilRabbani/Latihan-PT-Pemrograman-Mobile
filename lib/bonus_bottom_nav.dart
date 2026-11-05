import 'package:flutter/material.dart';

class BonusBottomNavPage extends StatefulWidget {
  const BonusBottomNavPage({super.key});

  @override
  State<BonusBottomNavPage> createState() => _BonusBottomNavPageState();
}

class _BonusBottomNavPageState extends State<BonusBottomNavPage> {
  int _selectedIndex = 0;

  // Daftar 3 halaman tab
  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Halaman Beranda', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
    Center(child: Text('Halaman Cari', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
    Center(child: Text('Halaman Profil', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bonus - Bottom Navigation Bar'),
        backgroundColor: Colors.brown,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.brown,
        onTap: _onItemTapped,
      ),
    );
  }
}