import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hi, Afrizal Dwi Septian",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Card Saldo Kamu
                Flexible(
                  child: Card(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saldo Kamu',
                            style: TextStyle(
                              color: Color.fromARGB(255, 2, 1, 1),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Rp 0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              FaIcon(
                                FontAwesomeIcons.arrowCircleRight,
                                size: 19,
                                color: Color.fromARGB(255, 255, 0, 0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Card Saldo Bonus
                Flexible(
                  child: Card(
                    color: const Color.fromARGB(255, 251, 250, 250),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saldo Bonus',
                            style: TextStyle(
                              color: Color.fromARGB(255, 2, 1, 1),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                size: 17,
                                color: Color.fromARGB(255, 255, 170, 0),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Rp 0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10),
                              FaIcon(
                                FontAwesomeIcons.arrowCircleRight,
                                size: 19,
                                color: Color.fromARGB(255, 255, 0, 0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
