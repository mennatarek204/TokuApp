import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/family_model.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({
    super.key,
    required this.member,
  });
  final FamilyModel member;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image(
              image: AssetImage(member.image),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            '${member.title}\n${member.subtitle}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: ()async {
                final player = AudioPlayer();
                // player.setSource(AssetSource('sounds/numbers/number_eight_sound.mp3'));
                await player.play(AssetSource(member.sound)); // will immediately start playing
            },
            icon: const Icon(Icons.play_arrow),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}