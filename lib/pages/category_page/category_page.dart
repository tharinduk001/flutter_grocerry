import 'package:flutter/material.dart';
import 'package:flutter_grocerry/widgets/reusable/categories_page/category_card.dart';
import 'package:flutter_grocerry/widgets/reusable/categories_page/widgets/selected_item.dart';
import 'package:flutter_grocerry/widgets/shared/notification_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Categories",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NotificationCard(),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "All Categories",
                style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CategoryCard(
                        title: "Vegetables \n&Fruits",
                        description: 20,
                        cricleColor: const Color(0xff0E00AC),
                        mainCategoryColor:
                            const Color(0xff0057FF).withOpacity(0.29),
                        categoryBorderColor: const Color(0xff0094FF),
                      ),
                      CategoryCard(
                        title: "Cooking \n&Elements",
                        description: 10,
                        cricleColor: const Color(0xff10C0F8),
                        mainCategoryColor:
                            const Color(0xff00E0FF).withOpacity(0.29),
                        categoryBorderColor: const Color(0xff00F0FF),
                      ),
                      CategoryCard(
                        title: "Vegetables \n&Fruits",
                        description: 20,
                        cricleColor: const Color(0xffE56C6C),
                        mainCategoryColor:
                            const Color(0xffFF3D00).withOpacity(0.29),
                        categoryBorderColor: const Color(0xffFFA800),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CategoryCard(
                        title: "Bites \n&Drinks",
                        description: 53,
                        cricleColor: const Color(0xff06FFA5),
                        mainCategoryColor:
                            const Color(0xff70FF00).withOpacity(0.29),
                        categoryBorderColor: const Color(0xff00FF29),
                      ),
                      CategoryCard(
                        title: "Chicken \n&Beef",
                        description: 2,
                        cricleColor: const Color(0xffFF9900),
                        mainCategoryColor:
                            const Color(0xffFFF500).withOpacity(0.29),
                        categoryBorderColor: const Color(0xff0094FF),
                      ),
                      CategoryCard(
                        title: "Transport \n&Vehicles",
                        description: 20,
                        cricleColor: const Color(0xffDB00FF),
                        mainCategoryColor:
                            const Color(0xffCC00FF).withOpacity(0.29),
                        categoryBorderColor: const Color(0xffCC00FF),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Selected Items",
                style: TextStyle(
                    color: Color(0xff3B3636),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              SelectedItem()
            ],
          ),
        ),
      ),
    );
  }
}
