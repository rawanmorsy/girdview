import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "home",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 8),
        children: [
         
          customecontainer(containerccolor: Colors.blueGrey,texts: "flutter",),
          customecontainer(containerccolor: Colors.blue,texts: "IEEE",),
          customecontainer(containerccolor: Colors.lightBlue,texts: "mohamed",),
          customecontainer(containerccolor: Colors.blueAccent,texts: "rawan ",),
          customecontainer(containerccolor: Colors.lightBlueAccent,texts: "sessions",)
        ,customecontainer(containerccolor: Colors.white38,texts: "boards",)
        ],
        
        
      ),
    ));
  }
}

class customecontainer extends StatelessWidget {
  customecontainer({
     required this.containerccolor,
    required this.texts,

  });
  Color containerccolor;
  String texts;
  @override
  Widget build(BuildContext context) {
    return Container(
      color:containerccolor,
      child:  Text(
        "$texts",
        style: TextStyle(color: Colors.white, fontSize: 22),
      ),
    );
  }
}
