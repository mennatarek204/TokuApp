import 'package:flutter/material.dart';

import '../models/Family_model.dart';
import '../widget/Family_item.dart';

class FamilyView extends StatelessWidget {
  const FamilyView({super.key});

  static const String id = 'familyView';

  final List<FamilyModel> members = const [
    FamilyModel(
        title: 'Chichioya',
        subtitle: 'Father',
        image: 'assets/images/family_members/family_father.png',
        sound: 'sounds/family_members/father.wav'),
    FamilyModel(
        title: 'Musume',
        subtitle: 'Daughter',
        image: 'assets/images/family_members/family_daughter.png',
        sound: 'sounds/family_members/daughter.wav'),
    FamilyModel(
        title: 'Ojisan',
        subtitle: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png',
        sound: 'sounds/family_members/grand father.wav'),
    FamilyModel(
        title: 'Hahaoya',
        subtitle: 'Mother',
        image: 'assets/images/family_members/family_mother.png',
        sound: 'sounds/family_members/mother.wav'),
    FamilyModel(
        title: 'Sobo',
        subtitle: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'sounds/family_members/grand mother.wav'),
    FamilyModel(
        title: 'Nisan',
        subtitle: 'Older brother',
        image: 'assets/images/family_members/family_older_brother.png',
        sound: 'sounds/family_members/older bother.wav'),
    FamilyModel(
        title: 'Ane',
        subtitle: 'Older sister',
        image: 'assets/images/family_members/family_older_sister.png',
        sound: 'sounds/family_members/older sister.wav'),
    FamilyModel(
        title: 'Musuko',
        subtitle: 'Son',
        image: 'assets/images/family_members/family_son.png',
        sound: 'sounds/family_members/son.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Memebers'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return FamilyItem(
              member: members[index],
            );
          }),
    );
  }
}
