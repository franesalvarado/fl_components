import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
         children: [
          Slider(
            min: 50,
            max: 800,
            activeColor: AppTheme.primary,
            // divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnabled
            ? (value){
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

          /* Checkbox(
            value: _sliderEnabled, 
            onChanged: (value){
              _sliderEnabled = value ?? true;
              setState(() { });
            }
          ), */

         /*  Switch(
            value: _sliderEnabled, 
            onChanged: (value) => setState(() { _sliderEnabled = value; })
          ), */

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Sliders'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() { _sliderEnabled = value ?? true; })
          ),
          
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Sliders'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() { _sliderEnabled = value; })
          ),

          const AboutListTile(),


          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage("https://static.wikia.nocookie.net/death-battle-fanon-wiki-en-espanol/images/d/d1/Batman.png/revision/latest?cb=20200323061733&path-prefix=es"),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
      
         ]
      ),
    );
  }
}