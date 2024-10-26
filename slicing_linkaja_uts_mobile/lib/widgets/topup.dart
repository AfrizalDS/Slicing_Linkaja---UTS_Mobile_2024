import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopUp extends StatelessWidget {
  const TopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15.0), // Memperbesar padding kartu
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceAround, // Memberi jarak antar ikon
          children: [
            // Ikon dan Label 1
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.add_card,
                  size: 33, // Memperbesar ukuran ikon
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(height: 5),
                Text("Isi Saldo"),
              ],
            ),
            // Ikon dan Label 2
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  FontAwesomeIcons.creditCard,
                  size: 28,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(height: 8),
                Text("Tarik Saldo"),
              ],
            ),
            // Ikon dan Label 3
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(
                  FontAwesomeIcons.moneyBillTransfer,
                  size: 28,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(height: 8),
                Text("Kirim Uang"),
              ],
            ),
            // Ikon dan Label 4
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.grid_view,
                  size: 28,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(height: 8),
                Text("Semua"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
