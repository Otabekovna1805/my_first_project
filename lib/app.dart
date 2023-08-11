import 'package:flutter/material.dart';
import 'package:my_first_project/screens/head_page.dart';

import 'core/service_locator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: mode,
      builder: (_, mode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: mode,
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          home: HeadPage(),
        );
      }
    );
  }
}
