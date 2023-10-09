import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import '../../../widget/fav_icon.dart';
import '../../../widget/rating_icon_widget.dart';

class RestaurantDetailsWidget extends StatelessWidget {
  const RestaurantDetailsWidget({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              width: w * 0.92,
              height: h * 0.50,
              child: const Card(),
            ),
            Positioned(
              right: 15,
              left: 15,
              top: 15,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    width: w * 0.85,
                    height: w * 0.45,
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: IconButton(
                        onPressed: () {}, icon: const AnimatedFavoriteIcon()),
                  ),
                ],
              ),
            ),
            const Positioned(
                bottom: 95,
                left: 15,
                child: Text(
                  'Cheese Sandwich House',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )),
            const Positioned(bottom: 75, left: 15, child: RatingIconWidget()),
            Positioned(
                bottom: 45,
                left: 15,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.electric_moped,
                          color: GreyClr,
                        ),
                        Text(
                          'free delivery',
                          style: TextStyle(color: GreyClr),
                        )
                      ],
                    ),
                    SizedBox(
                      width: w * 0.18,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.schedule,
                          color: GreyClr,
                        ),
                        Text(
                          '25 - 30 min',
                          style: TextStyle(color: GreyClr),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ],
    );
  }
}
