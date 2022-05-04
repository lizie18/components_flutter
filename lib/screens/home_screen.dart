import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
            title: const Text('Flutter components')),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(menuOptions[i].name),
                  leading: Icon(menuOptions[i].icon, color: AppTheme.primaryColor),
                  onTap: () {
                    // Option 1
                    // ========
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListView1Screen());
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
