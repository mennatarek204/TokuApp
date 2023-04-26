import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/phrases_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.phrase,
  });
  final PhrasesModel phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4fadc7),
      height: 100,
      child: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          Text(
            '${phrase.title}\n${phrase.subtitle}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              // player.setSource(AssetSource('sounds/numbers/number_eight_sound.mp3'));
              await player.play(
                  AssetSource(phrase.sound)); // will immediately start playing
            },
            icon: const Icon(Icons.play_arrow),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
