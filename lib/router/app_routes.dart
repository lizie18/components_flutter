import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/listview_builder_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        icon: Icons.home,
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        name: 'Listview 1',
        icon: Icons.list_alt,
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        name: 'Listview 2',
        icon: Icons.list_sharp,
        screen: const ListView2Screen()),
    MenuOption(
        route: 'alert',
        name: 'Alerts',
        icon: Icons.wb_twilight_rounded,
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        name: 'Cards',
        icon: Icons.tab_outlined,
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        icon: Icons.account_circle,
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        name: 'Animations',
        icon: Icons.adobe_outlined,
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        name: 'Inputs',
        icon: Icons.power_input,
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        name: 'Slider & Checks',
        icon: Icons.slow_motion_video_rounded,
        screen: const SliderScreen()),
    MenuOption(
        route: 'listview',
        name: 'InfiniteScroll & pull to load',
        icon: Icons.line_style_sharp,
        screen: const ListviewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoute() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
