import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';

class DeliveryDetailsWidget extends StatelessWidget {
  final Icon leadingIcon;
  final String title;
  final String subtitle;
  const DeliveryDetailsWidget({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  CircleAvatar(
          radius: 18,
          child: leadingIcon,),
      title: Text(
        title,
        style: TextStyle(color: GreyClr, fontSize: 13),
      ),
      subtitle:  Text(
        subtitle,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
