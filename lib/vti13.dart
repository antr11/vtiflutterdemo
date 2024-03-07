import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'age'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // row1(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 120,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 100,
                height: 120,
                color: Colors.green,
              ),
              Expanded(
                child: Container(
                  height: 120,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          //row2
          row2(),
        ],
      ),
    );
  }
}

Widget row2() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      row2c1(),
      row2c2(),
      row2c3(),
    ],
  );
}

Widget row2c1() {
  return Column(
    children: [
      Container(
        height: 150,
        width: 50,
        color: Colors.black,
      ),
      Container(
        height: 150,
        width: 50,
        color: Colors.yellow,
      ),
    ],
  );
}

Widget row2c2() {
  return Column(
    children: [
      Container(
        height: 75,
        width: 250,
        color: Colors.red,
      ),
      Container(
        height: 75,
        width: 250,
        color: Colors.brown,
      ),
      Container(
        height: 75,
        width: 250,
        color: Colors.blue,
      ),
      Container(
        height: 75,
        width: 250,
        color: Colors.amber,
      ),
    ],
  );
}

Widget row2c3() {
  return Expanded(
    child: Container(
      height: 150,
      color: Colors.purple,
    ),
  );
}
