import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.price,
    required this.scrollController,
  });
  final String title;
  final String price;
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: EdgeInsets.all(16),
      child: ListView(
        controller: scrollController,
        children: [
          Center(
            child: Container(
              width: 50,
              height: 8,
              decoration: BoxDecoration(color: Colors.grey.shade300),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(height: 16),

          Row(
            children: [
              Text(
                price,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Spacer(),
              Icon(Icons.hardware),
            ],
          ),

          Container(
            decoration: BoxDecoration(
              //  borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 1, color: Colors.grey.shade300),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Select color',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: SvgPicture.asset('asset/image/svg/Frame 39639.svg'),
                  ),
                  Spacer(),

                  Container(color: Colors.grey.shade300, width: 3, height: 40),
                  Spacer(),

                  Text(
                    'Select size',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: SvgPicture.asset('asset/image/svg/Frame 39639.svg'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                'ADD TO BAG',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
