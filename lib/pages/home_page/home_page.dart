import 'package:flutter/material.dart';
import 'package:flutter_grocerry/pages/home_page/widgets/search_bar.dart';
import 'package:flutter_grocerry/widgets/app_bar/app_bar.dart';
import 'package:flutter_grocerry/widgets/reusable/home_page/category_box.dart';
import 'package:flutter_grocerry/widgets/reusable/home_page/product_price_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actions: appBarActions,
        shadowColor: Colors.black12,
        elevation: 3,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SeacrhBox(),
              SizedBox(
                height: 15,
              ),
              Text(
                "Explore Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryBox(
                    title: "Vegetables",
                    description:
                        "Vegetables are parts of that are consumed by humans...",
                    largeContainerColor: Color(0xff9E00FF),
                    smallContainerColor: Color(0xff06FFA5),
                    textColor: Colors.white,
                  ),
                  CategoryBox(
                    title: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food...",
                    largeContainerColor: Color(0xff9E00FF),
                    smallContainerColor: Color(0xff06FFA5),
                    textColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryBox(
                    title: "Vegetables",
                    description:
                        "Vegetables are parts of that are consumed by humans...",
                    largeContainerColor: Color(0xffFFE500),
                    smallContainerColor: Color(0xffFF9900),
                    textColor: Colors.black,
                  ),
                  CategoryBox(
                    title: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food...",
                    largeContainerColor: Color(0xffFFE500),
                    smallContainerColor: Color(0xffFF9900),
                    textColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "For Sale and Low Costs",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductPriceCard(
                    title: "Washing Liquid",
                    amount: 220,
                    unit: "ml",
                    price: 230,
                  ),
                  ProductPriceCard(
                    title: "Coffee and Tea",
                    amount: 100,
                    unit: "g",
                    price: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
