import 'package:flutter/material.dart';
import 'package:navigation_drawer/main.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Page 1",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage1(title: 'Hello Navigation'),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Page 1"),
      ),
      body: Center(
        child: Text("Page 1"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon((Icons.arrow_left)),
        tooltip: "Grow Home Page",
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) =>MyApp()));
        },
      ),
    );
  }
}

