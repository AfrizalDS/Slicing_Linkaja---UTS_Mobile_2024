// profile_screen.dart
import 'package:flutter/material.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/bottom_menu.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const ProfileHeader(
              name: 'Afrizal Dwi Septian',
              id: '6285161644408',
              imageUrl: 'assets/img/afrizal.png',
            ),
            const SizedBox(height: 20),
            ProfileListItem(
              title: 'Tipe Akun',
              value: 'Full Service',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Pengaturan Akun',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'LinkAja Syariah',
              value: 'Tidak Aktif',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Metode Pembayaran',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Email',
              value: 'afrizaldwiseptian@gmail.com',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Pertanyaan Keamanan',
              value: 'Sudah Diatur',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Pengaturan PIN',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Bahasa',
              value: 'Indonesia',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Ketentuan Layanan',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Kebijakan Privasi',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            ProfileListItem(
              title: 'Pusat Bantuan',
              onTap: () {},
              showArrow: true,
            ),
            const ProfileDivider(),
            const LogoutButton(),
            const SizedBox(height: 80),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final String name;
  final String id;
  final String imageUrl;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.id,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                id,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl),
          ),
        ],
      ),
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final String title;
  final String? value;
  final VoidCallback onTap;
  final bool showArrow;

  const ProfileListItem({
    super.key,
    required this.title,
    this.value,
    required this.onTap,
    this.showArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            if (value != null)
              Text(
                value!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            if (showArrow)
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      thickness: 1,
      color: Color(0xFFEEEEEE),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Keluar',
          style: TextStyle(
            color: Colors.red,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
