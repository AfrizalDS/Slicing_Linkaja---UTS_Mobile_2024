import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/auto_slider.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/balanced.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/bottom_menu.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/manual_slider.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/news.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/topup.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
              // Row 1 - Logo and Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/img/linkaja.png',
                    width: 60,
                    height: 60,
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 60,
                          width: 60,
                          child: const Center(
                            child: FaIcon(
                              FontAwesomeIcons.heart,
                              size: 40,
                              color: Color.fromARGB(255, 6, 1, 1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 60,
                          width: 60,
                          child: const Center(
                            child: Icon(
                              Icons.headphones,
                              size: 40,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const BalanceCard(),
              const SizedBox(height: 15),
              const TopUp(),
              const Menu(),
              const AutoSlider(),
              const ManualSlider(),
              const News(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
