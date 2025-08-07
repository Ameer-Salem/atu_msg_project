import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:atu_msg_project/config/flex_theme.dart';
import 'package:atu_msg_project/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TextTheme textTheme = createTextTheme(context, 'Fredoka', "Fredoka");
    ThemeData theme = AppTheme.light;
    ThemeData darkTheme = AppTheme.dark;
    return AdaptiveTheme(
      dark: darkTheme,
      light: theme,
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme,
          darkTheme: darkTheme,
          home: ChangeNotifierProvider<MainController>(
            create: (_) => MainController(),
            child: SafeArea(child: MainPage()),
          ),
        );
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MainController>(context);
    final width = controller.getScreenWidth(context);

    if (width >= 800) return controller.setWebLayout();
    return controller.setMobileLayout();
  }
}
