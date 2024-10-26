// page_provider.dart
import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void updatePage(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
