import 'package:flutter/material.dart';

import 'package:flutter_route_playground/page_01.dart';

class HomePage extends StatefulWidget {
  const HomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  static const String routeName = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: Text(widget.title)),
        body: Center(
          child: TextButton(
            child: const Text('Go to Page 01'),
            onPressed: () => Navigator.pushNamed(
              context,
              Page01.routeName,
              arguments: {'data': 'Hello from Home Page!'},
            ),
          ),
        ),
      );
}
