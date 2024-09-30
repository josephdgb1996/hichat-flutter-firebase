import 'package:flutter/material.dart';
import 'package:app/src/di.dart';
import 'package:app/src/app.dart';

void main() {
  DI.setup();
  runApp(const HiChat());
}