import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          // Row pertama
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Mengatur ke bagian atas
            children: [
              // Ikon dan Label 1
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40, // Tinggi tetap untuk ikon
                    child: Icon(
                      Icons.tap_and_play,
                      size: 40,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  SizedBox(
                    height: 30, // Tinggi tetap untuk teks
                    child: Text(
                      "Pulsa/Data",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              // Ikon dan Label 2
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                    child: Icon(
                      Icons.electric_bolt,
                      size: 37,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      "Listrik",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              // Ikon dan Label 3
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                    child: FaIcon(
                      FontAwesomeIcons.t,
                      size: 28,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      "Hemat Lengkap\nby Telkomsel",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              // Ikon dan Label 4
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                    child: Icon(
                      Icons.account_balance_wallet_rounded,
                      size: 37,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      "Kartu Uang\nElektronik",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20), // Jarak antara baris

          // Row kedua
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Mengatur ke bagian atas
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                    child: FaIcon(
                      FontAwesomeIcons.church,
                      size: 33,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      "Gereja",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                    child: FaIcon(
                      FontAwesomeIcons.handHoldingHand,
                      size: 28,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      "Infaq",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                    child: FaIcon(
                      FontAwesomeIcons.handsHoldingCircle,
                      size: 28,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      "Donasi Lainnya",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 40,
                    child: Icon(
                      Icons.grid_view,
                      size: 37,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      "Lainnya",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
