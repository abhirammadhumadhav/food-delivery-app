import 'package:flutter/material.dart';
import '../core/constants/constants.dart';

class RatingIconWidget extends StatelessWidget {
  const RatingIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ),
        szdbxW,
        Text(
          '4.7',
          style: TextStyle(color: GreyClr),
        )
      ],
    );
  }
}
