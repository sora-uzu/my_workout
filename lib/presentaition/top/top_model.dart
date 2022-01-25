import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopModel extends ChangeNotifier {
  int currentIndex = 0;

  void onTabTapped(int index) async {
    currentIndex = index;

    notifyListeners();
  }
}
