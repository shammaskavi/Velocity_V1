import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 101, 101, 101)),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSection('Comfort+', 'mode'),
                  _buildSection('115km', 'range'),
                  _buildSection('21:20', 'time'),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: _buildSpeedBoxAndControls(),
            ),
            Expanded(
              flex: 2,
              child: _buildMapSection(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String subtext) {
    return Container(
      padding: EdgeInsets.all(16.0),
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

  Widget _buildSpeedBoxAndControls() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 400.0,
          height: 400.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '62',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 8.0),
              Text(
                'km/h',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildControlText('P', active: false),
            _buildControlText('R', active: false),
            _buildControlText('D', active: true),
          ],
        ),
      ],
    );
  }

  Widget _buildControlText(String text, {bool active = false}) {
    return GestureDetector(
      onTap: () {
        // Handle onTap
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: active ? FontWeight.bold : FontWeight.normal,
          color: active ? Colors.white : Colors.grey,
        ),
      ),
    );
  }

  Widget _buildMapSection() {
    return PageView(
      children: [
        _buildMapPage("13.4", "km left", "7:30", "time left"),
        _buildMapPage("13.4", "km left", "7:30", "time left"),
        _buildMapPage("13.4", "km left", "7:30", "time left"),
      ],
    );
  }

  Widget _buildMapPage(String header1, subtext1, header2, subtext2) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
              "https://cdn.discordapp.com/attachments/958659016182083645/1226061154032418887/Screenshot_2024-04-06_at_12.06.35_PM.png?ex=6623656e&is=6610f06e&hm=c9007dbcb154649ac74cbec34b1e829ed7365036757dd919f87f8306443c8d9c&",
              fit: BoxFit.cover,
            ), // Replace Placeholder with your map widget
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      header1,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(subtext1),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      header2,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(subtext2),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
