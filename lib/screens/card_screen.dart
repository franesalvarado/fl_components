import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: 'Un hermoso paisaje', imageUrl: 'https://avivamientochaco.com/web/wp-content/uploads/2018/10/travel-landscape-01.jpg',),
          SizedBox(height: 20),
          CustomCardType2(name: 'Otro hermoso paisaje', imageUrl: 'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://thelandscapephotoguy.com/wp-content/uploads/2019/01/landscape%20new%20zealand%20S-shape.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://avivamientochaco.com/web/wp-content/uploads/2018/10/travel-landscape-01.jpg',),
          SizedBox(height: 100),
        ],
      )
    );
  }
}

