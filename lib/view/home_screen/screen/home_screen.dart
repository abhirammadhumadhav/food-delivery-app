import 'package:flutter/material.dart';
import 'package:food_delivery/core/constants/constants.dart';
import '../../../widget/search_field.dart';
import '../widget/banner_widget.dart';
import '../widget/restarunt_details_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> containerColors = [
    Colors.orange,
    Colors.grey.withOpacity(0.1),
    Colors.grey.withOpacity(0.1),
    const Color.fromRGBO(158, 158, 158, 1).withOpacity(0.1),
  ];
  List<Color> textColors = [
    Colors.white,
    Colors.black, 
    Colors.black, 
    Colors.black, 
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
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            const Center(
              child: Text('Home'),
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
        child: Padding(
          padding: EdgeInsets.only(left: w * 0.06),
          child: Column(
            children: [
              Row(
                children: [
                  const Text('3121 Darla Henderson NV'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.expand_more,
                        color: Colors.grey,
                      ))
                ],
              ),
              szdbxH,
              const SearchFieldWidget(),
              szdbxH,
              BannerWidget(w: w, h: h),
              szdbxH,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    )
                  ],
                ),
              ),
              szdbxH,
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildColoredContainer('All Food', 0),
                    szdbxW,
                    buildColoredContainer('Burger', 1),
                    szdbxW,
                    buildColoredContainer('Pizza', 2),
                    szdbxW,
                    buildColoredContainer('Burger', 3),
                  ],
                ),
              ),
              szdbxH,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Restaurant Near You',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    )
                  ],
                ),
              ),
              szdbxH,
              SizedBox(
                height: w * 0.85,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RestaurantDetailsWidget(w: w, h: h),
                    RestaurantDetailsWidget(w: w, h: h),
                    RestaurantDetailsWidget(
                      w: w,
                      h: h,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildColoredContainer(String text, int index) {
    return GestureDetector(
      onTap: () => changeContainerColor(index),
      child: Container(
        width: 100,
        height: 15,
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
