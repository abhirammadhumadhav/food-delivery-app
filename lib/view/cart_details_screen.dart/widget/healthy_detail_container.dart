import 'package:flutter/material.dart';
import 'package:food_delivery/core/constants/constants.dart';


class HealthyDetailsContainerWidget extends StatelessWidget {
  final String  title;
  const HealthyDetailsContainerWidget({
    super.key, required this.title,
  });
  @override
  Widget build(BuildContext context) {
     double w = MediaQuery.of(context).size.width;
     double h = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.3),
      ),
      width: w * 0.3,
      height: h * 0.06,
      child:  Center(child: Text(title,style: TextStyle(color: GreyClr),)),
    );
  }
}