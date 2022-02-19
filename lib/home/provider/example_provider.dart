import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:hungman/home/screen/example.dart';

class ExampleProvider extends ChangeNotifier {
  double? _height;
  double? _width;

  _init() {
    _height = Random().nextInt(350).toDouble();
    _width = Random().nextInt(350).toDouble();
  }

  ExampleProvider() {
    _init();
  }

  double? get height => _height;
  double? get width => _width;
}
