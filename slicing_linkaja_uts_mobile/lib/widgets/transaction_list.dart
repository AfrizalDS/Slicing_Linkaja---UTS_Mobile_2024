import 'package:flutter/material.dart';
import 'transaction_card.dart';

class TransactionList extends StatelessWidget {
  final String status;

  const TransactionList({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> transactions = [
      {
        "title": "Biaya Layanan E-Commerce",
        "amount": "Rp 50.400",
        "date": "17 Maret 2024, 14:30 WIB",
        "description": "Pembayaran Shopee",
        "status": "Sukses"
      },
      {
        "title": "Biaya Top Up Dompet Digital",
        "amount": "Rp 100.900",
        "date": "12 Juli 2024, 09:50 WIB",
        "description": "Top Up Dana",
        "status": "Sukses"
      },
      {
        "title": "Transfer Antar Bank ",
        "amount": "Rp 1.150.400",
        "date": "06 September 2024, 04:30 WIB",
        "description": "Tranfer ke Af*********l",
        "status": "Sukses"
      },
    ];

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return TransactionCard(transaction: transaction);
      },
    );
  }
}
