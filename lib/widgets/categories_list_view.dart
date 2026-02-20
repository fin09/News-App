import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

List<CategoryModel> categories = [
  CategoryModel(image: 'assets/sports.avif', categoryName: 'sports'),
  CategoryModel(image: 'assets/business.avif', categoryName: 'business'),
  CategoryModel(
    image: 'assets/entertaiment.avif',
    categoryName: 'entertainment',
  ),
  CategoryModel(image: 'assets/general.avif', categoryName: 'general'),
  CategoryModel(image: 'assets/health.avif', categoryName: 'health'),
  CategoryModel(image: 'assets/science.avif', categoryName: 'science'),
  CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
];
// ignore: non_constant_identifier_names
SizedBox CategoriesListView() {
  return SizedBox(
    height: 100.h,
    child: ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(category: categories[index]);
      },
    ),
  );
}
