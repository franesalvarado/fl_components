import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('jwkefnjwekjew jkefnjwefkwjke ejfwjfkewnf kwenfjewkfnewj enwkfwnejfw efnjwfejew ew fnefwj ew fjewf ej e fewjfef jjew jef jberj  rjgvje jgkvrej jerjv jejk vjkrejv jkrejvj ekrvjrevrejk jvrkerjkrvjk ejrjvejkrkvjkre vjr ejkrjrejvjejkrvkjejkrvjerjk vrjerjkverrv erkjvrjjkerjkrej jejjrjr jkrvjrjrjkjerkjvrekejjkerjkvrej'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text('Ok')
                ),
            ],),
          )
        ],
      )
    );
  }
}