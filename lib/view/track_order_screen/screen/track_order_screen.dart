import 'package:flutter/material.dart';
import '../widget/order_details_widget.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Track Order',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        leading: const CircleAvatar(
            radius: 5,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: OrderDetailsWidget(h: h),
      ),
    );
  }
}
