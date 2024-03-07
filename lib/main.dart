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
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'age'),
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
      backgroundColor: const Color.fromARGB(255, 94, 199, 248),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 199, 248),
        title: const Text(
          '10.82, 206.24',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text(
            'Ho Chi Minh City',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset('assets/image/image2.png'),
          ),
          const Text(
            'Soft Light',
            style: TextStyle(fontSize: 24),
          ),
          const Text(
            '32C',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          wheaterIndex(),
          forceCast(),
        ],
      ),
    );
  }

  Container wheaterIndex() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.25),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DetailWheatherIndex(
                title: '',
                value: '',
              ),
              DetailWheatherIndex(
                title: '',
                value: '',
              ),
              DetailWheatherIndex(
                title: '',
                value: '',
              ),
            ],
          ),
          Column(
            children: [
              DetailWheatherIndex(
                title: '',
                value: '',
              ),
              DetailWheatherIndex(
                title: '',
                value: '',
              ),
              DetailWheatherIndex(
                title: '',
                value: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Container forceCast() {
  return Container(
    margin: const EdgeInsets.all(16),
    padding: const EdgeInsets.all(25),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.25),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset('assets/image/wb_sunny.png'),
            const Text(
              'FORECAST',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(8),
          height: 1,
          color: Colors.white,
        ),
      ],
    ),
  );
}

class DetailWheatherIndex extends StatelessWidget {
  String title;
  String value;
  DetailWheatherIndex({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Row(
        children: [
          Text(
            'Humidity: ',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            '40%',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
