import 'package:flutter/material.dart';

class CheeseBurger with ChangeNotifier{
  int orderABurger = 0;

  void orderSomeCheeseburger(){
    orderABurger++;
    print('you ordered $orderABurger CheeseBurger');
    notifyListeners();
  }
}