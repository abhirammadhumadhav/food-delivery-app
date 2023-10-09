import 'package:flutter/material.dart';
import 'package:food_delivery/core/constants/constants.dart';
import '../../food_details_screen/widget/icremnt_decrmnt_btn.dart';
import 'healthy_detail_container.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: GreyClr.withOpacity(0.3),
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15))),
      width: w,
      height: h * 0.96,
      child: Column(
        children: [
          Center(
              child: CircleAvatar(
            radius: 100,
            backgroundColor: GreyClr,
          )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Grilled  Salmon',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '180 gr',
                      style: TextStyle(fontSize: 15, color: GreyClr),
                    )
                  ],
                ),
                IncrementDecrementButtonWidget(
                  color: Colors.white,
                  iconColor: Colors.grey,
                  h: h,
                  w: w,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HealthyDetailsContainerWidget(title: 'Few Calories'),
                HealthyDetailsContainerWidget(title: 'Healthy'),
                HealthyDetailsContainerWidget(title: 'High Protien'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
