import 'package:flutter/material.dart';
import 'package:food_delivery/core/constants/constants.dart';
import 'package:food_delivery/view/food_details_screen/widget/cart_btn_widget.dart';
import 'package:food_delivery/widget/fav_icon.dart';
import '../widget/nutrition_val_container.dart';
import '../widget/product_details_widget.dart';

class FoodCartDetailsScreen extends StatelessWidget {
  const FoodCartDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.3),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            szdbxW,
            const Center(
              child: Text('Food Details'),
            ),
            SizedBox(
              width: 45,
              height: 48,
              child: IconButton(
                icon: const AnimatedFavoriteIcon(),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                ProductDetailsWidget(w: w, h: h),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Nutrition Value per 100 gr',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NutritionValueContainerWidget(
                      w: w,
                      h: h,
                      title: 'KCAL',
                      count: '165',
                    ),
                    NutritionValueContainerWidget(
                      w: w,
                      title: 'PROTIEN',
                      count: '14.6',
                      h: h,
                    ),
                  ],
                ),
                szdbxH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NutritionValueContainerWidget(
                      w: w,
                      h: h,
                      title: 'FATS',
                      count: '8.2',
                    ),
                    NutritionValueContainerWidget(
                      w: w,
                      title: 'CARBOHYDRATE',
                      count: '6.4',
                      h: h,
                    ),
                  ],
                ),
                szdbxH,
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('₹14.50',
                          style: TextStyle(fontSize: 25, color: Colors.orange)),
                      CartButtonWidget()
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
