import 'package:flutter/material.dart';

import 'package:flutter_route_playground/page_03.dart';

class Page02 extends StatelessWidget {
  static const routeName = 'second_page';

  const Page02({required this.data, Key? key}) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: const Text('Page 02')),
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
                child: const Text('Go to Page 03'),
                onPressed: () => Navigator.pushNamed(
                  context,
                  Page03.routeName,
                  arguments: {'data': 'Hello from Page 02!'},
                ),
              )
            ],
          ),
        ),
      );
}
