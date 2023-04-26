import 'package:flutter/material.dart';
import '../enums/category_type.dart';

class CategoryModel {
  const CategoryModel(
      {required this.category_type, required this.text, required this.color});
  final String text;
  final Color color;
  final CategoryType category_type;
}