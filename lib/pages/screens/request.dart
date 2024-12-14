import 'package:flutter/material.dart';

class RequestDetailsPage extends StatelessWidget {
  final Map<String, String> request;

  RequestDetailsPage({required this.request});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Request Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item: ${request['item']}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Pickup Location: ${request['location']}'),
            SizedBox(height: 10),
            Text('Reward: ${request['reward']}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Back to Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}