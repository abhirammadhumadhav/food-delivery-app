import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/core/constants/constants.dart';

class IngredientContainerWidget extends StatelessWidget {
  const IngredientContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: GreyClr, borderRadius: BorderRadius.circular(10)),
      width: 50,
      height: 50,
    );
  }
}
