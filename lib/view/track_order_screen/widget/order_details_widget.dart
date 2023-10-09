import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import 'delivery_details.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({
    super.key,
    required this.h,
  });
  final double h;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/7ca82f32-6f6e-4576-b7ce-2e39daa76620.jpeg',
                  ),
                  fit: BoxFit.cover)),
          width: double.infinity,
          height: h,
        ),
        Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: h * 0.42,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: GreyClr.withOpacity(0.2),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: GreyClr.withOpacity(0.3),
                            ),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Justin Case',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Food Courier',
                                    style:
                                        TextStyle(fontSize: 12, color: GreyClr),
                                  )
                                ],
                              ),
                            ),
                            szdbxW,
                            const CircleAvatar(
                              backgroundColor: AmberClr,
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            ),
                            const CircleAvatar(
                              backgroundColor: AmberClr,
                              child: Icon(
                                Icons.message,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const DeliveryDetailsWidget(
                      leadingIcon: Icon(
                        Icons.schedule,
                        color: Colors.orange,
                      ),
                      subtitle: '134 W Appache St 83214',
                      title: 'Delivery Address'),
                  const DeliveryDetailsWidget(
                      leadingIcon: Icon(
                        Icons.location_on,
                        color: Colors.orange,
                      ),
                      subtitle: '20 - 30 min',
                      title: 'Estimated Delivery Time'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                            minimumSize: MaterialStateProperty.all(
                                Size(double.infinity, h * 0.05))),
                        onPressed: () {},
                        child: const Text(
                          'ORDER DETAILS',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
