import 'package:flutter/material.dart';

class Tech6Project extends StatelessWidget {
  final name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tech 6 Project'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100.0,
                  height: 150.0,
                  child: CircleAvatar(
                      child: Image.asset('asset/image/andriodDev.jpg')),
                )),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Text('Name: $name'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Name: $name'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Text('Department: $name'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Name: $name'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Text('Duration: $name'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Name: $name'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Text('Email: $name'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Name: $name'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Text('Address: $name'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Name: $name'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Text('Contact: $name'),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Name: $name'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
