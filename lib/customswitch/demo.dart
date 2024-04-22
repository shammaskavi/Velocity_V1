import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mac OS App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mac OS App'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildSection('Section 1', 'Subtext for Section 1'),
                _buildSection('Section 2', 'Subtext for Section 2'),
                _buildSection('Section 3', 'Subtext for Section 3'),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.grey),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, String subtext) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(subtext),
        ],
      ),
    );
  }
}
