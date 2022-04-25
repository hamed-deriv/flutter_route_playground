import 'package:flutter/material.dart';
import 'package:flutter_route_playground/page_02.dart';

class Page01 extends StatelessWidget {
  static const routeName = 'first_page';

  const Page01({required this.data, Key? key}) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: const Text('Page 01')),
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
                child: const Text('Go to Page 02'),
                onPressed: () => Navigator.pushNamed(
                  context,
                  Page02.routeName,
                  arguments: {'data': 'Hello from Page 01!'},
                ),
              )
            ],
          ),
        ),
      );
}
