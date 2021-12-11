import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Count=${count}")
        ],
      )
        ,),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}