import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number_model.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({
    super.key,
    required this.number,
  });
  final NumberModel number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image(
              image: AssetImage(number.image),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            '${number.title}\n${number.subtitle}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              // player.setSource(AssetSource('sounds/numbers/number_eight_sound.mp3'));
              await player.play(
                  AssetSource(number.sound)); // will immediately start playing
            },
            icon: const Icon(Icons.play_arrow),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
