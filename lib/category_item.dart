import 'package:deli_meals/category_meals_screen.dart';
import 'package:flutter/material.dart';
import 'category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String categoryId;
  final String title;
  final Color color;

  CategoryItem(this.categoryId, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/category-meals',
        arguments: {'id': categoryId, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.headline6),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
