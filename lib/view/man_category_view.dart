import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:p3/models/men_model.dart';
import 'package:p3/view/category_details_view.dart';
import 'package:p3/widgets/custom_app_bar.dart';
import 'package:p3/widgets/item.dart';

class MenCategoryView extends StatefulWidget {
  const MenCategoryView({super.key});

  @override
  State<MenCategoryView> createState() => _MenCategoryViewState();
}

class _MenCategoryViewState extends State<MenCategoryView> {
  final List<MenModel> menModel = const [
    MenModel(
      image: 'asset/image/model1.png',
      title: 'Casual T-Shirt',
      price: '\$25',
    ),
    MenModel(
      image: 'asset/image/model2.png',
      title: 'Formal Shirt',
      price: '\$40',
    ),
    MenModel(
      image: 'asset/image/model3.png',
      title: 'Leather Jacket',
      price: '\$95',
    ),
    MenModel(
      image: 'asset/image/model4.png',
      title: 'Denim Jeans',
      price: '\$35',
    ),
    MenModel(
      image: 'asset/image/model5.png',
      title: 'Sweatshirt',
      price: '\$50',
    ),
  ];

  late List<bool> isselected;
  @override
  void initState() {
    super.initState();
    isselected = List.generate(menModel.length, (_) => false);
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

          Expanded(
            child: GridView.builder(
              itemCount: menModel.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CategoryDetailsView(
                            image: menModel[index].image,
                            price: menModel[index].price  ,
                            title: menModel[index].title,
                          );
                        },
                      ),
                    );
                  },
                  child: Item(
                    image: menModel[index].image,
                    text: menModel[index].title,
                    price: menModel[index].price,
                    onTapUp: (p0) {
                      isselected[index] = !isselected[index];
                      setState(() {});
                    },
                    icon: isselected[index]
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
