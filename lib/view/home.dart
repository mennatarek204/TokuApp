import 'package:flutter/material.dart';

import '../enums/category_type.dart';
import '../models/category_model.dart';
import '../widget/category_item.dart';


class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  static const String id = 'homeView';

  final List<CategoryModel> categories = const [
    CategoryModel(
        category_type: CategoryType.numbers,
        text: 'Numbers',
        color: Colors.orange),
    CategoryModel(
        category_type: CategoryType.familyMembers,
        text: 'Family Memebers',
        color: Colors.green),
    CategoryModel(
        category_type: CategoryType.colors,
        text: 'Colors',
        color: Color.fromARGB(255, 193, 76, 214)),
    CategoryModel(
        category_type: CategoryType.phrases,
        text: 'Phrases',
        color: Colors.lightBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff46322B),
        elevation: 8,
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            categoryModel: categories[index],
          );
        },
      ),
      // body: Column(
      //   children: [
      //     CategoryItem(
      //       text: 'Numbers',
      //       color: Colors.orange,
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) {
      //               return const NumbersView();
      //             },
      //           ),
      //         );
      //       },
      //     ),
      //     CategoryItem(
      //       text: 'Family Memebers',
      //       color: Colors.green,
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) {
      //               return const FamilyView();
      //             },
      //           ),
      //         );
      //       },
      //     ),
      //     CategoryItem(
      //       text: 'Colors',
      //       color: const Color.fromARGB(255, 193, 76, 214),
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) {
      //               return const ColorView();
      //             },
      //           ),
      //         );
      //       },
      //     ),
      //     CategoryItem(
      //       text: 'Phrases',
      //       color: Colors.lightBlue,
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) {
      //               return const PhrasesView();
      //             },
      //           ),
      //         );
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
