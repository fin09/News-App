import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryView(category: category.categoryName)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 12.w),
        height: 100.h,
        width: 170.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.cover,
          ),
          color: Colors.orange,
          borderRadius: BorderRadius.circular(12.r),
        ),
          child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      )
    );
  }
}
