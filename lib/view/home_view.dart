import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:p3/widgets/Home_Body.dart';
import 'package:p3/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: CustomAppBar(
          image1: 'asset/image/svg/bar-chart-2.svg',
          text: 'runway',
          image3: 'asset/image/svg/solar_bell-line-duotone.svg',
        ),
      ),
      body: HomeBody(),
    );
  }
}
