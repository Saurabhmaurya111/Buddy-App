import 'package:flutter/material.dart';
import 'package:travel_buddy_app/pages/screens/request.dart';

class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> deliveryRequests = [
    {
      'item': 'Groceries',
      'location': 'Remote Village A',
      'reward': '50 Points',
    },
    {
      'item': 'Electronics',
      'location': 'Town B',
      'reward': '100 Points',
    },
    {
      'item': 'Clothes',
      'location': 'City C',
      'reward': '70 Points',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(Icons.person , size: 40,))
        ],
      ),
      body: ListView.builder(
        itemCount: deliveryRequests.length,
        itemBuilder: (context, index) {
          final request = deliveryRequests[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(request['item']!),
              subtitle: Text(
                  'Location: ${request['location']}\nReward: ${request['reward']}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RequestDetailsPage(request: request),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
