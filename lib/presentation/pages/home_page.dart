import 'package:atu_msg_project/core/utilities/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<NavigationRailDestination> railDestinations;
  late List<BottomNavigationBarItem> bottomDestinations;

  final List<NavigationDestination> destinations = [
    NavigationDestination(
      label: ('Home'),
      icon: Icon(Icons.home),
      selectedIcon: Icon(Icons.home_filled),
    ),
    NavigationDestination(
      label: ('Settings'),
      icon: Icon(Icons.settings),
      selectedIcon: Icon(Icons.settings_rounded),
    ),
    NavigationDestination(
      label: ('About'),
      icon: Icon(Icons.info),
      selectedIcon: Icon(Icons.info_rounded),
    ),
  ];

  @override
  void initState() {
    railDestinations = destinations
        .map(
          (e) => NavigationRailDestination(icon: e.icon, label: Text(e.label)),
        )
        .toList();

    bottomDestinations = destinations
        .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
        .toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String title = 'Home Page';
    double screenWidth = MediaQuery.sizeOf(context).width;

    if (screenWidth >= 800) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              leading: SvgPicture.asset(
                AssetsManager.atuLogo,
                width: 48,
                height: 48,
              ),
              selectedIndex: 0,
              destinations: railDestinations,
            ),
            VerticalDivider(),
            Flexible(
              fit: FlexFit.loose,
              flex: 3,
              child: Center(child: Text('very wide')),
            ),
            VerticalDivider(),
            Flexible(
              fit: FlexFit.tight,
              flex: 7,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppBar(title: Text(title)),
                  ),
                  Expanded(child: Center(child: Text('$screenWidth'))),
                ],
              ),
            ),
          ],
        ),
      );
    } else if (screenWidth >= 600) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              leading: SvgPicture.asset(
                AssetsManager.atuLogo,
                width: 48,
                height: 48,
              ),
              selectedIndex: 0,
              destinations: destinations
                  .map(
                    (e) => NavigationRailDestination(
                      icon: e.icon,
                      label: Text(e.label),
                    ),
                  )
                  .toList(),
            ),
            VerticalDivider(),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppBar(title: Text(title)),
                  ),
                  Expanded(child: Center(child: Text('$screenWidth'))),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 8,bottom: 8),
            child: SvgPicture.asset(
              AssetsManager.atuLogo,
            ),
          ),
          title: Text(title),
        ),
        body: Center(child: Text("normal")),
        bottomNavigationBar: BottomNavigationBar(items: bottomDestinations),
      );
    }
  }
}
