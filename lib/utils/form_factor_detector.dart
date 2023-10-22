import 'package:flutter/material.dart';

class FormFactorDetector {
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }
}
