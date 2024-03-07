import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          box1(),
          const SizedBox(
            height: 50,
          ),
          box2(),
        ],
      ),
    );
  }
}

Widget box1() {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: 150,
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.purple,
                height: 50,
                width: 75,
              ),
              Container(
                color: Colors.green,
                height: 50,
                width: 75,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget box2() {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    color: Colors.grey,
    child: Row(
      children: [
        Container(
          color: Colors.black,
          height: 100,
          width: 60,
          child: SvgPicture.asset('assets/Logo.svg'),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 100,
          width: 300,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
