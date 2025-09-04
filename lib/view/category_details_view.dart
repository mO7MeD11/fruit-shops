import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:p3/widgets/custom_app_bar.dart';
import 'package:p3/widgets/custom_bottom_sheet.dart';

class CategoryDetailsView extends StatefulWidget {
  const CategoryDetailsView({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });
  final String image;
  final String title;
  final String price;

  @override
  State<CategoryDetailsView> createState() => _CategoryDetailsViewState();
}

class _CategoryDetailsViewState extends State<CategoryDetailsView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  ScrollController scrollController = ScrollController();

  void _showBottomSheet() {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      backgroundColor: Colors.transparent, // keep background visible
      barrierColor: Colors.transparent, // no dark overlay
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: .3,
          minChildSize: .3,
          maxChildSize: .7,
          expand: false,
          builder: (context, scrollController) {
            return CustomBottomSheet(
              price: widget.price,
              title: widget.title,
              scrollController: scrollController,
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: CustomAppBar(
          image1: 'asset/image/svg/bar-chart-2 (1).svg',
          text: 'Men',
          image3: 'asset/image/svg/bi_bag.svg',
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black12),
            ),
            child: Row(
              children: [
                SizedBox(width: 16),
                Text(
                  'Sort By',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                SvgPicture.asset('asset/image/svg/Frame 39639.svg'),
                SizedBox(width: 16),
                Spacer(),
                SvgPicture.asset('asset/image/svg/lucide_settings-2.svg'),
                SizedBox(width: 5),
                Text(
                  'Filter',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 16),
                SvgPicture.asset('asset/image/svg/ion_grid-outline.svg'),
                SizedBox(width: 16),
                SvgPicture.asset(
                  'asset/image/svg/solar_users-group-rounded-outline.svg',
                ),
                SizedBox(width: 16),
              ],
            ),
          ),
          Image.asset(widget.image),
        ],
      ),
    );
  }
}
