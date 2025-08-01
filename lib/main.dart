import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:atu_msg_project/presentation/pages/home_page.dart';
import 'package:atu_msg_project/config/theme.dart';
import 'package:atu_msg_project/config/util.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

  TextTheme textTheme = createTextTheme(context, 'Fredoka', "Fredoka");
    
    return AdaptiveTheme(
      dark: MaterialTheme(textTheme).dark(),
      light: MaterialTheme(textTheme).light(),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme,
          darkTheme: darkTheme,
          home: SafeArea(child: const HomePage()),
        );
      },
    );
  }
}
