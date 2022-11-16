import 'package:flutter/material.dart';
import 'package:responsive_practice/component/top_menu.dart';
import 'package:responsive_practice/component/two_pain_container.dart';

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
      ),
      home: const _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  const _MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TwoPainContainer(
        dividerRatio: 1 / 2,
        left: Container(
          color: Colors.blue[50],
          margin: const EdgeInsets.all(32),
          child: const Center(child: Text('左!!')),
        ),
        right: Container(
          color: Colors.teal[50],
          margin: const EdgeInsets.all(32),
          child: const Center(
            child: TopMenu(),
          ),
        ),
      ),
    );
  }
}
