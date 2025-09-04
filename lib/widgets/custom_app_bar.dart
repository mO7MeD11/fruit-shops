import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.image1,
    required this.text,
    required this.image3,
  });

  final String? image1;
  final String? text;
  final String? image3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (image1 != null) SvgPicture.asset(image1!),
        Spacer(),
        if (text != null)
          Text(
            text!,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        Spacer(),

        if (image3 != null) SvgPicture.asset(image3!),
      ],
    );
  }
}
