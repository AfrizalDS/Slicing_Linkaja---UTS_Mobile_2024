import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Menunda selama 3 detik sebelum berpindah ke halaman Home
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Memposisikan isi di tengah
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/img/linkaja.png',
                  width:
                      screenWidth * 0.25, // Mengatur ukuran sesuai lebar layar
                ),
                SizedBox(width: 10), // Tambahkan sedikit jarak antar gambar
                Image.asset(
                  'assets/img/logoSyariah.png',
                  width: screenWidth * 0.3,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/img/tagline.png', // Gambar ketiga di bawah
            width: screenWidth * 0.8, // Lebar sesuai layar
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Image.asset(
              'assets/img/person.png',
              fit: BoxFit.cover, // Menyesuaikan gambar penuh ke bawah
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "versi 1.1.1",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ],
      ),
    );
  }
}
