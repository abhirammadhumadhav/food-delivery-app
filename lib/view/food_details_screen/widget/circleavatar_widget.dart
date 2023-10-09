import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: w * 0.55,
        width: h * 0.55,
        child: CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.4),
        ));
  }
}
