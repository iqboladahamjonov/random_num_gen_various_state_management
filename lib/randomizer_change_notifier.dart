import 'dart:math';

import 'package:flutter/foundation.dart';

class RandomizerChangeNotifier extends ChangeNotifier {
  final randomGenerator = Random();
  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;
  int min = 0, max = 0;
  void generateRandomNumber() {
    _generatedNumber = min + randomGenerator.nextInt(max + 1 - min);
    notifyListeners();
  }
}
