import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:atu_msg_project/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    AdaptiveTheme(
      light: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp(
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    ),
  );
}
