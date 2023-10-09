import 'package:flutter/material.dart';
import 'package:food_delivery/core/constants/constants.dart';
import 'package:food_delivery/widget/rating_icon_widget.dart';
import '../widget/cart_btn_widget.dart';
import '../widget/circleavatar_widget.dart';
import '../widget/icremnt_decrmnt_btn.dart';
import '../widget/ingredient_container_widget.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});
  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  List<Color> containerColors = [
    Colors.orange,
    Colors.grey.withOpacity(0.1),
    Colors.grey.withOpacity(0.1),
    const Color.fromRGBO(158, 158, 158, 1).withOpacity(0.1),
  ];
  List<Color> textColors = [
    Colors.white,
    Colors.black, // Initial text color for other containers
    Colors.black, // Initial text color for other containers
    Colors.black, // Initial text color for other containers
  ];
  void changeContainerColor(int index) {
    setState(() {
      for (int i = 0; i < containerColors.length; i++) {
        containerColors[i] =
            i == index ? Colors.orange : Colors.grey.withOpacity(0.1);
        textColors[i] = i == index ? Colors.white : Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            szdbxW,
            const Center(
              child: Text('Food Details'),
            ),
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.shopping_bag_outlined),
                  onPressed: () {},
                ),
                Positioned(
                    right: w * 0.02,
                    top: h * 0.01,
                    child: const CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.red,
                    ))
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CircleAvatarWidget(w: w, h: h),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(40, 30))),
                onPressed: () {
                  displayBottomSheet(context);
                },
                child: const Text('Tap..')),
            SizedBox(
              height: h * 0.46,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: IncrementDecrementButtonWidget(
                      color: GreyClr.withOpacity(0.3),
                      iconColor: Colors.white,
                      h: h,
                      w: w),
                ),
                const CartButtonWidget()
              ],
            )
          ],
        ),
      ),
    );
  }

  displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Chicken Burger',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('₹14.50',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.orange))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: RatingIconWidget(),
                      ),
                      szdbxH,
                      const Divider(
                        thickness: 0.3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.electric_moped,
                                  color: AmberClr,
                                  size: 15,
                                ),
                                Text(
                                  'Free Delivery',
                                  style: TextStyle(color: GreyClr),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.schedule,
                                  color: AmberClr,
                                  size: 15,
                                ),
                                Text(
                                  '25 - 30 min',
                                  style: TextStyle(color: GreyClr),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.local_fire_department,
                                  color: AmberClr,
                                  size: 15,
                                ),
                                Text(
                                  '320 kcl',
                                  style: TextStyle(color: GreyClr),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      szdbxH,
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Size'),
                          ],
                        ),
                      ),
                      szdbxH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildSizeConatiner('Small', 0),
                          szdbxW,
                          buildSizeConatiner('Medium', 1),
                          szdbxW,
                          buildSizeConatiner('Large', 2),
                          szdbxW,
                          buildSizeConatiner('XLarge', 3)
                        ],
                      ),
                      szdbxH,
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Ingredients'),
                          ],
                        ),
                      ),
                      szdbxH,
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IngredientContainerWidget(),
                            szdbxW,
                            IngredientContainerWidget(),
                            szdbxW,
                            IngredientContainerWidget(),
                            szdbxW,
                            IngredientContainerWidget(),
                            szdbxW,
                            IngredientContainerWidget(),
                          ],
                        ),
                      ),
                      szdbxH,
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                      )
                    ],
                  ),
                )
              ],
            ));
  }

  Widget buildSizeConatiner(String text, int index) {
    return GestureDetector(
      onTap: () => changeContainerColor(index),
      child: Container(
        width: 70,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: containerColors[index],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColors[index]),
          ),
        ),
      ),
    );
  }
}
