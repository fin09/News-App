import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/widgets/categories_list_view.dart'
    show CategoriesListView;
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/search_news.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.newspaper),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SearchNews()),
          SliverToBoxAdapter(child: CategoriesListView()),
          SliverToBoxAdapter(child: SizedBox(height: 16.h)),
          NewsListView(),
        ],
      ),
    );
  }
}
