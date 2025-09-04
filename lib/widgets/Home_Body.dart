import 'package:flutter/material.dart';
import 'package:p3/helper/video_screen.dart';
import 'package:p3/view/kids_category_view.dart';
import 'package:p3/view/man_category_view.dart';
import 'package:p3/widgets/category.dart';
import 'package:p3/view/women_category_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: double.infinity, height: 430, child: VideoScreen()),
        SizedBox(height: 10),
        Text(
          '   Categories',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(height: 15),
        Category(
          onTap: (i) {
            if (i == 0) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => WomenCategoryView()),
              );
            } else if (i == 1) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MenCategoryView()),
              );
            } else if (i == 2) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => KidsCategoryView()),
              );
            }
          },
        ),
      ],
    );
  }
}
