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
        title: Text('Dashboard', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.blue.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: deliveryRequests.length,
            itemBuilder: (context, index) {
              final request = deliveryRequests[index];
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  title: Text(
                    request['item']!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple.shade900,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        'Location: ${request['location']}',
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Reward: ${request['reward']}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade700,
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey.shade700,
                    size: 20,
                  ),
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
        ),
      ),
    );
  }
}
