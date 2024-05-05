import 'package:flutter/material.dart';
import 'package:flutter_grocerry/widgets/price_card/price_card.dart';
import 'package:flutter_grocerry/widgets/shared/gradient_button.dart';
import 'package:flutter_grocerry/widgets/shared/notification_card.dart';
import 'package:flutter_grocerry/widgets/shared/title_desc_cart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          "Product Details",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NotificationCard(),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFF500).withOpacity(0.29),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 200,
                      color: const Color(0xff333333).withOpacity(0.75),
                    ),
                  ),
                ),
              ),
              const TitleDescriptionCart(
                title: "Product Information",
                description:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const TitleDescriptionCart(
                title: "Product Information",
                description:
                    "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Price List",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3B3636)),
                ),
              ),
              const PriceCard(
                productNumber: 1,
                productName: "Green peas ",
                productWeight: 100,
                unit: "g",
              ),
              const PriceCard(
                productNumber: 2,
                productName: "Brussels sprouts.",
                productWeight: 100,
                unit: "g",
              ),
              const PriceCard(
                productNumber: 3,
                productName: "Green peas ",
                productWeight: 100.45454545,
                unit: "g",
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total : ",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3B3636)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "230\$",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff9E00FF)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientButton(
                    bottomColor: Color(0xffFFE500),
                    buttonHeight: 50,
                    buttonText: "Add to cart",
                    buttonWidth: 300,
                    topColor: Color(0xffCC00FF),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
