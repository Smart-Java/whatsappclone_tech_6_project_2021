import 'package:flutter/material.dart';

class FutureTest extends StatefulWidget {
  @override
  _FutureTestState createState() => _FutureTestState();
}

class _FutureTestState extends State<FutureTest> {
  Future _getValues() {
    return Future.forEach([1, 2, 3, 4, 5, 6, 7, 8, 9], (element) {
      if (element % 2 == 0) {
        return true;
      } else {
        return false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: FutureBuilder(
        future: _getValues(),
        builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            child: Center(
              child: Text('${snapshot.data}'),
            ),
          );
        } else {
          if (snapshot.hasError) {
            return Container(
              child: Center(
                child: Text('Error occured'),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      }),
    );
  }
}
