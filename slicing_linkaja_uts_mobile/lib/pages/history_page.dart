import 'package:flutter/material.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/bottom_menu.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/pending_page.dart';
import 'package:slicing_linkaja_uts_mobile/widgets/transaction_list.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Riwayat Transaksi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Pending'),
            Tab(text: 'Done'),
          ],
          indicatorColor: Colors.red,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          PendingPage(),
          TransactionList(status: "Done"),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
