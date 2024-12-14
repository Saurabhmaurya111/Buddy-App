import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_buddy_app/pages/screens/dashboard.dart';
import 'package:travel_buddy_app/pages/screens/profile.dart';


class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int selectedIndex = 0;
  final List pages = [
       DashboardPage(),
      
      ProfilePage(),
     
     
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value ;
             print('Selected page: $selectedIndex');
          });
        },
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home5),
          label: 'Home',
        ),
       
       
        BottomNavigationBarItem(
          icon: Icon(Iconsax.profile_2user),
          label: 'Profile',
        ),
       
       
      ]),
      body: pages[selectedIndex],
    );
  }
}
