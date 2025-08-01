import 'package:atu_msg_project/home/layouts/mobile_layout.dart';
import 'package:atu_msg_project/home/layouts/tablet_layout.dart';
import 'package:atu_msg_project/home/layouts/web_layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 800) return WebLayout();
    if (screenWidth >= 600) return TabletLayout();
    return MobileLayout();
    
  }
}
