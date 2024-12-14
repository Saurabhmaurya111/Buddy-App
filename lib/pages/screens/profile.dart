import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_buddy_app/pages/auth_pages/login_pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String userName = "John Doe";

  final int completedDeliveries = 15;

  final int rewardPoints = 200;

   Future<void> _logout() async {
  try {
    await FirebaseAuth.instance.signOut();
   
  

   
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => LogInPage()),
    // );
  } catch (e) {
    print('Error logging out: $e');
    // Optionally, show an error message
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
              SizedBox(height: 20),
              Text('Name: $userName',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Completed Deliveries: $completedDeliveries',
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text('Reward Points: $rewardPoints',
                  style: TextStyle(fontSize: 16)),


                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      Text('LogOut'),
                       IconButton(
                                 icon: Icon(Icons.logout),
                                 onPressed: _logout, // Call the logout function here
                               ),
                     ],
                   ),
            ],
          ),
        ),
      ),
    );
  }
}