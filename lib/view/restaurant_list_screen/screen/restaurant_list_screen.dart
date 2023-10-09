import 'package:flutter/material.dart';
import '../../../widget/search_field.dart';
import '../widget/listtile.dart';

class RestaurantListScreen extends StatefulWidget {
  const RestaurantListScreen({super.key});

  @override
  State<RestaurantListScreen> createState() => _RestaurantListScreenState();
}

class _RestaurantListScreenState extends State<RestaurantListScreen> {
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
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            const Center(
              child: Text('Restaurant List'),
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
          child: const Column(
            children: [
              SearchFieldWidget(),
              ListtileWidget(
                  title: 'Indian Restaurant',
                  subtitle1: '4.2 km',
                  subtitle2: '30 min'),
              ListtileWidget(
                  title: 'Italian Restaurant',
                  subtitle1: '3.7 km',
                  subtitle2: '25 min'),
              ListtileWidget(
                  title: 'Asian Restaurant',
                  subtitle1: '5.9 km',
                  subtitle2: '40 min'),
              ListtileWidget(
                  title: 'French Food Restaurant',
                  subtitle1: '7.9 km',
                  subtitle2: '25 min'),
              ListtileWidget(
                  title: 'Indian Restaurant',
                  subtitle1: '8.1 km',
                  subtitle2: '14 min'),
              ListtileWidget(
                  title: 'Indian Restaurant',
                  subtitle1: '8.1 km',
                  subtitle2: '12 min'),
              ListtileWidget(
                  title: 'Indian Restaurant',
                  subtitle1: '4.2 km',
                  subtitle2: '34 min'),
              ListtileWidget(
                  title: 'Italian Restaurant',
                  subtitle1: '3.7 km',
                  subtitle2: '42 min'),
              ListtileWidget(
                title: 'Asian Restaurant',
                subtitle1: '5.9 km',
                subtitle2: '35 min',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
