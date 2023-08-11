import 'package:flutter/material.dart';
import 'package:my_first_project/app.dart';
import 'package:my_first_project/core/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  runApp(const MyApp());
}