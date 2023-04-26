import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/category_type.dart';
import '../models/category_model.dart';
import '../view/color_view.dart';
import '../view/family_view.dart';
import '../view/numbers_view.dart';
import '../view/phrases_view.dart';



class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (categoryModel.category_type) {
          case CategoryType.numbers:
            Navigator.pushNamed(context, NumbersView.id);
            break;

          case CategoryType.familyMembers:
            Navigator.pushNamed(context, FamilyView.id);
            break;

          case CategoryType.colors:
            Navigator.pushNamed(context, ColorView.id);
            break;

          case CategoryType.phrases:
            Navigator.pushNamed(context, PhrasesView.id);
            break;
        }
      },
      // onTap: onTap,
      child: Container(
        height: 85,
        color: categoryModel.color,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              categoryModel.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}