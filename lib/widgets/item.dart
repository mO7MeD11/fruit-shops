import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.image,
    required this.text,
    required this.price,
    this.onTapUp,
    required this.icon,
  });

  final String image, text, price;
  final Function(TapUpDetails)? onTapUp;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, width: 200, height: 200),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                maxLines: 1,
                text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                  Spacer(),
                  InkWell(onTapUp: onTapUp, child: Icon(icon)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
