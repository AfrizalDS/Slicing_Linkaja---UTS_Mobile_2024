// bottom_menu.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:slicing_linkaja_uts_mobile/pages/page_provider.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: pageProvider.currentIndex,
      onTap: (index) {
        pageProvider.updatePage(index); // Update halaman aktif
      },
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          label: "Beranda",
          icon: Icon(Icons.house_outlined, size: 40),
        ),
        BottomNavigationBarItem(
          label: "Riwayat",
          icon: FaIcon(FontAwesomeIcons.fileLines, size: 35), // Perbesar ikon
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.all(12.0), // Perbesar padding
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Icon(
              Icons.qr_code,
              size: 30.0, // Perbesar ukuran ikon
              color: Colors.white,
            ),
          ),
          label: 'Bayar',
        ),
        BottomNavigationBarItem(
          label: "Pesan",
          icon: FaIcon(FontAwesomeIcons.envelope, size: 35), // Perbesar ikon
        ),
        BottomNavigationBarItem(
          label: "Profil",
          icon: FaIcon(FontAwesomeIcons.user, size: 35), // Perbesar ikon
        ),
      ],
    );
  }
}
