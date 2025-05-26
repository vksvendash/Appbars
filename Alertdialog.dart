
import 'package:flutter/cupertino.dart';
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
      home: alertdialog(),
    );
  }
}

class alertdialog extends StatefulWidget {
  const alertdialog({super.key});

  @override
  State<alertdialog> createState() => _alertdialogState();
}

class _alertdialogState extends State<alertdialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDialog"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text("delete account"),
                content: Text("are you sure want to delete your account"),
                actions: [
                  ElevatedButton(onPressed: () {
                        Navigator.pop(context);
                  }, child: Text("yes")),

                  ElevatedButton(onPressed: () {
                        Navigator.pop(context);
                  }, child: Text("no")),
                ],
              );
            },);
          }, child: Text("alertdialog",style: TextStyle(color: Colors.black),),)
        ],
      ),
    );
  }
}

