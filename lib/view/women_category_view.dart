import 'package:flutter/material.dart';
import 'package:p3/widgets/custom_app_bar.dart';

class WomenCategoryView extends StatelessWidget {
  const WomenCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(
          image1: 'asset/image/svg/bar-chart-2 (1).svg',
          text: 'Women',
          image3: 'asset/image/svg/bi_bag.svg',
        ),
      ),
    );
  }
}
