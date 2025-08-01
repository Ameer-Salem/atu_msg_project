import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Home Page';

    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/icons/atu_400x400.svg',
          ),
        ),
        title: Text(title),
        centerTitle: false,
      ),
      body: Center(child: Text('Home Page')),
    );
  }
}
