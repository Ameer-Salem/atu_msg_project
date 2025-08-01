
import 'package:atu_msg_project/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final controller = Provider.of<HomeController>(context);
    final width = controller.getScreenWidth(context);

    if (width >= 800) return controller.setWebLayout();
    if (width >= 600) return controller.setTabletLayout();
    return controller.setMobileLayout();
    
  }
}
