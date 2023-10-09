import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
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
            Container(
              height: h * 0.20,
              width: w * 0.92,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(
                        'lib/assets/mega-sale-50-percent-off-banner-template-design-vector-25369004.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Positioned(
                bottom: 15,
                right: 15,
                child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(180, 40)),
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'TASTE NOW',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ],
    );
  }
}
