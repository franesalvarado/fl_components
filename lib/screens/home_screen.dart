import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) => ListTile(
          leading: Icon(AppRoute.menuOptions[index].icon, color: AppTheme.primary,),
          title: Text(AppRoute.menuOptions[index].name),
          onTap: (){

            //  final route = MaterialPageRoute(
            //    builder: (context) => const Listview1Screen()
            //  );
            //  Navigator.push(context, route);

            Navigator.pushNamed(context, AppRoute.menuOptions[index].route);
          }
        )), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: AppRoute.menuOptions.length),
    );
  }
}