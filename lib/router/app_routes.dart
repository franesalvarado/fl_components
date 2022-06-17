import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';

class AppRoute {
  static const initialRoute = 'home';
  
  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_sharp),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_arrow_outlined),
    MenuOption(route: 'inputs', name: 'Inputs', screen: const InputScreen(), icon: Icons.inbox_outlined),
    MenuOption(route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoute = {};

    appRoute.addAll({'home' : ( BuildContext context ) => const HomeScreen()});


    for (final option in menuOptions) {
      appRoute.addAll({option.route : ( BuildContext context ) => option.screen});
    }


    return appRoute;
  }


//  static Map<String, Widget Function(BuildContext)> routes = {
//    'home'     : ( BuildContext context ) => const HomeScreen(),
//    'listview1': ( BuildContext context ) => const Listview1Screen(),
//    'listview2': ( BuildContext context ) => const Listview2Screen(),
//    'card'     : ( BuildContext context ) => const CardScreen(),
//    'alert'    : ( BuildContext context ) => const AlertScreen(),
//  };

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
      );
  }
}