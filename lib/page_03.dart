import 'package:flutter/material.dart';

import 'package:flutter_route_playground/home_page.dart';

class Page03 extends StatelessWidget {
  static const routeName = 'third_page';

  const Page03({required this.data, Key? key}) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: const Text('Page 03')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data['data'],
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              TextButton(
                child: const Text('Go to First Page'),
                onPressed: () => Navigator.pushNamed(
                  context,
                  HomePage.routeName,
                  arguments: {'data': 'Hello from Page 03!'},
                ),
              )
            ],
          ),
        ),
      );
}
