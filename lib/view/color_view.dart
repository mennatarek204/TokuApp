import 'package:flutter/material.dart';

import '../models/color_model.dart';
import '../widget/color_item.dart';

class ColorView extends StatelessWidget {
  const ColorView({super.key});

  static const String id = 'colorsView';

  final List<ColorModel> colors = const [
    ColorModel(
        title: 'Burakku',
        subtitle: 'Black',
        image: 'assets/images/colors/color_black.png',
        sound: 'sounds/colors/black.wav'),
    ColorModel(
        title: 'Chairo',
        subtitle: 'Brown',
        image: 'assets/images/colors/color_brown.png',
        sound: 'sounds/colors/brown.wav'),
    ColorModel(
        title: 'Hokori',
        subtitle: 'dusty yellow',
        image: 'assets/images/colors/color_dusty_yellow.png',
        sound: 'sounds/colors/dusty yellow.wav'),
    ColorModel(
        title: 'Gure',
        subtitle: 'Gray',
        image: 'assets/images/colors/color_gray.png',
        sound: 'sounds/colors/gray.wav'),
    ColorModel(
        title: 'Midori',
        subtitle: 'Green',
        image: 'assets/images/colors/color_green.png',
        sound: 'sounds/colors/green.wav'),
    ColorModel(
        title: 'Aka',
        subtitle: 'Red',
        image: 'assets/images/colors/color_red.png',
        sound: 'sounds/colors/red.wav'),
    ColorModel(
        title: 'Burakku',
        subtitle: 'Black',
        image: 'assets/images/colors/color_black.png',
        sound: 'sounds/colors/black.wav'),
    ColorModel(
        title: 'Shiroi',
        subtitle: 'White',
        image: 'assets/images/colors/color_white.png',
        sound: 'sounds/colors/white.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ColorItem(
              color: colors[index],
            );
          }),
    );
  }
}
