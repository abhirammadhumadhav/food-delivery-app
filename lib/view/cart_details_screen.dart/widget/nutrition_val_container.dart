import 'package:flutter/cupertino.dart';

import '../../../core/constants/constants.dart';

class NutritionValueContainerWidget extends StatelessWidget {
  final String title;
  final String count;
  const NutritionValueContainerWidget({
    super.key,
    required this.w,
    required this.title,
    required this.count,
    required this.h,
  });
  final double w;
  final double h;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: GreyClr.withOpacity(0.1),
      ),
      width: w * 0.45,
      height: h * 0.18,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 10, color: GreyClr),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                count,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'kcal',
                style: TextStyle(fontSize: 10, color: GreyClr),
              )
            ],
          )
        ],
      ),
    );
  }
}
