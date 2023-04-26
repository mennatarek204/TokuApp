import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/color_model.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.color,
  });

  final ColorModel color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xfffff6db),
            child: Image(
              image: AssetImage(color.image),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            '${color.title}\n${color.subtitle}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(
                  AssetSource(color.sound)); // will immediately start playing
            },
            icon: const Icon(Icons.play_arrow),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
