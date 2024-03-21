import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              '',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
            elevation: 4,
            shadowColor:
                Colors.black.withOpacity(0.5), 
                // Tinggi bayangan (drop shadow)
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab, 
              // Panjang kursor tab
              indicatorColor: Colors.white,
               // Warna kursor tab
              tabs: [
                Tab(
                  text: "For You",
                ),
                Tab(
                  text: "Following",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // For You Tab
              ListView(
                children: [
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Data ke 0'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Data ke 1'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Data ke 2'),
                    ),
                  ),
                  // Add more list view items here
                ],
              ),
              // Following Tab
              GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      height: 90,
                      width: 90,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      height: 150,
                      width: 150,
                    ),
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
