import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Home Page';

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Home Page')),
    );
  }
}
