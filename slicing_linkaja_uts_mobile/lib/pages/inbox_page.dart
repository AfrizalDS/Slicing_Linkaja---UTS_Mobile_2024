import 'package:flutter/material.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/bottom_menu.dart';
// import '../models/transaction.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  // final List<Transaction> transactions = [
  //   Transaction(id: 1, amount: 10000, description: "Top-up"),
  //   Transaction(id: 2, amount: 5000, description: "Payment"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: const Center(
        child: Text("ini inbox"),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
