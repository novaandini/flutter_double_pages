import 'package:double_pages/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        // useMaterial3: false,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        centerTitle: true,
      ),
      body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: FloatingActionButton(
                backgroundColor: Colors.blue.shade900,
                shape: OvalBorder(side: BorderSide.none),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SecondPage()));
                },
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
    );
  }
}
