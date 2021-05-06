import 'package:flutter/material.dart';

class NavigationTest extends StatefulWidget {
  @override
  _NavigationTestState createState() => _NavigationTestState();
}

class _NavigationTestState extends State<NavigationTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Test'),
      ),
      body: Navigator(
        initialRoute: '/',
        onGenerateRoute: (RouteSettings routeSettings) {
          switch (routeSettings.name) {
            case '/':
              return MaterialPageRoute(builder: (context) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('hello'),
                      RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text('click me')),
                    ],
                  ),
                );
              });
              break;
            case '/second':
              return MaterialPageRoute(builder: (context) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('hello second page'),
                      RaisedButton(onPressed: null, child: Text('click me')),
                    ],
                  ),
                );
              });
              break;
            default:
          }
        },
      ),
    );
  }
}
