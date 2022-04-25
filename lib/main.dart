import 'package:flutter/material.dart';

import 'package:flutter_route_playground/home_page.dart';
import 'package:flutter_route_playground/page_01.dart';
import 'package:flutter_route_playground/page_02.dart';
import 'package:flutter_route_playground/page_03.dart';
import 'package:flutter_route_playground/unknown_route_page.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: HomePage.routeName,
        routes: <String, WidgetBuilder>{
          HomePage.routeName: (context) =>
              const HomePage(title: 'Flutter Demo'),
        },
        onGenerateRoute: (settings) {
          final String? routeName = settings.name;

          if (routeName != null) {
            switch (routeName) {
              case Page01.routeName:
                return MaterialPageRoute<void>(
                  builder: (context) =>
                      Page01(data: settings.arguments as Map<String, dynamic>),
                );

              case Page02.routeName:
                return MaterialPageRoute<void>(
                  builder: (context) =>
                      Page02(data: settings.arguments as Map<String, dynamic>),
                );

              case Page03.routeName:
                return MaterialPageRoute<void>(
                  builder: (context) =>
                      Page03(data: settings.arguments as Map<String, dynamic>),
                );
            }
          }
        },
        onUnknownRoute: (settings) => MaterialPageRoute<void>(
          builder: (context) =>
              UnknownRoutePage(route: settings.name ?? 'NO NAME'),
        ),
      );
}
