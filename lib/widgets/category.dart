import 'package:flutter/material.dart';
import 'package:p3/models/category_model.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.onTap});

  final List<CategoryModel> categoryModel = const [
    CategoryModel(name: 'Women', image: 'asset/image/women2.png'),
    CategoryModel(name: 'Men', image: 'asset/image/men.png'),
    CategoryModel(name: 'Kids', image: 'asset/image/kids.png'),
    CategoryModel(name: 'Deals', image: 'asset/image/women3.png'),
    CategoryModel(name: 'Deals', image: 'asset/image/men.png'),
    CategoryModel(name: 'Deals', image: 'asset/image/women3.png'),
  ];
  final Function(int index) onTap;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categoryModel.length, (index) {
          return Column(
            children: [
              ClipOval(
                child: InkWell(
                  onTap: () {
                      onTap(index);
                    },
                  child: Image.asset(
                    categoryModel[index].image,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                categoryModel[index].name,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ],
          );
        }),
      ),
    );
  }
}
