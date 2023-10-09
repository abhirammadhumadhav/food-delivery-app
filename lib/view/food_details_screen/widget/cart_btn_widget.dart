import 'package:flutter/material.dart';
import 'package:food_delivery/view/cart_details_screen.dart/screen/food_cart_screen.dart';

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const FoodCartDetailsScreen();
              }));
            },
            child: const Text(
              'ADD TO CART',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
