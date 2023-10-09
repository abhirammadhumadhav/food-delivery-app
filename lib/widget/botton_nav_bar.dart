import 'package:flutter/material.dart';
import 'package:food_delivery/view/home_screen/screen/home_screen.dart';
import 'package:food_delivery/view/restaurant_list_screen/screen/restaurant_list_screen.dart';
import 'package:food_delivery/view/track_order_screen/screen/track_order_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int currentIndex = 0;
final screens = [
  const HomeScreen(),
  const RestaurantListScreen(),
  const TrackOrderScreen()
];

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        // backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_convenience_store),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
