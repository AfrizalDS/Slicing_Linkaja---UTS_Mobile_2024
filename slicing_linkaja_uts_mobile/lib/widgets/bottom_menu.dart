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
      items: const [
        BottomNavigationBarItem(
          label: "Beranda",
          icon: FaIcon(FontAwesomeIcons.house, size: 30),
        ),
        BottomNavigationBarItem(
          label: "Riwayat",
          icon: FaIcon(FontAwesomeIcons.fileLines, size: 30),
        ),
        BottomNavigationBarItem(
          label: "Bayar",
          icon: FaIcon(FontAwesomeIcons.qrcode, size: 30),
        ),
        BottomNavigationBarItem(
          label: "Pesan",
          icon: FaIcon(FontAwesomeIcons.envelope, size: 30),
        ),
        BottomNavigationBarItem(
          label: "Profil",
          icon: FaIcon(FontAwesomeIcons.user, size: 30),
        ),
      ],
    );
  }
}
