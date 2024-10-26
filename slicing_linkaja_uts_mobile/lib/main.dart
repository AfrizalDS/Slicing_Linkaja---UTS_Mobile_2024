import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slicing_linkaja_uts_mobile/pages/splash_page.dart';
import 'package:slicing_linkaja_uts_mobile/pages/home_page.dart';
import 'package:slicing_linkaja_uts_mobile/pages/history_page.dart';
import 'package:slicing_linkaja_uts_mobile/pages/pay_page.dart';
import 'package:slicing_linkaja_uts_mobile/pages/inbox_page.dart';
import 'package:slicing_linkaja_uts_mobile/pages/profile_page.dart';
import 'package:slicing_linkaja_uts_mobile/pages/page_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => MyHomePage(), // Pindah ke MyHomePage
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Widget> _pages = [
    HomePage(),
    HistoryPage(),
    PayPage(),
    InboxPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);

    return Scaffold(
      body: _pages[pageProvider.currentIndex],
    );
  }
}
