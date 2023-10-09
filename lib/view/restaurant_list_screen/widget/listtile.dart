import 'package:flutter/material.dart';
import 'package:food_delivery/view/food_details_screen/screen/food_details_screen.dart';
import 'package:food_delivery/widget/rating_icon_widget.dart';

class ListtileWidget extends StatefulWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  const ListtileWidget({
    super.key,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  });

  @override
  State<ListtileWidget> createState() => _ListtileWidgetState();
}

class _ListtileWidgetState extends State<ListtileWidget> {
  bool isFavorite = false;
  void togglePressed() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color iconColor =
        isFavorite ? const Color.fromARGB(255, 249, 2, 2) : Colors.grey;
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const FoodDetailsScreen();
        }));
      },
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey.withOpacity(0.4),
      ),
      title: Text(widget.title),
      subtitle: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.subtitle1),
              const SizedBox(),
              Text(widget.subtitle2),
              const SizedBox(),
              const Text('Free Delivery')
            ],
          ),
          const RatingIconWidget()
        ],
      ),
      trailing: InkWell(
          onTap: () {
            togglePressed();
          },
          child: Icon(
            Icons.favorite,
            color: iconColor,
          )),
    );
  }
}
