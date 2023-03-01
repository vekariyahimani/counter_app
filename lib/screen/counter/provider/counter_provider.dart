import 'package:flutter/material.dart';

class CounterProvider  extends ChangeNotifier
{
  int i=0;

  void increment()
  {
    i++;
    notifyListeners();
  }
  void dicrement()
  {
    i--;
    notifyListeners();
  }
  void two()
  {
    i=i*2;
    notifyListeners();
  }

  void three()
  {
    i=i*3;
    notifyListeners();
  }

  void four()
  {
    i=i*4;
    notifyListeners();
  }

  void reset()
  {
    i=0;
    notifyListeners();
  }




}