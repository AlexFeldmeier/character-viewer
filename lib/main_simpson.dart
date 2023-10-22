import 'package:character_viewer/app_config.dart';
import 'package:character_viewer/app_launcher.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
      config: AppConfig(
    title: 'Simpson Viewer',
    query: 'simpsons+characters',
  )));
}
