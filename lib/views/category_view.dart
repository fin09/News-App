import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Category')),
      body:CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 16.h)),
          NewsListViewBuilder(category: category),
        ],
      ),
    );
  }
}