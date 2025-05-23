import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("whatsApp"),
                backgroundColor: Colors.green,
              bottom: TabBar(tabs: [
                Tab(child: Text("calls"),),
                Tab(child: Text("status"),),
                Tab(child: Text("Setting"),)
              ],
              ),
              ),
          body: TabBarView(
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.green,
                ),
                ],
                ),
        )
    );
  }
}
