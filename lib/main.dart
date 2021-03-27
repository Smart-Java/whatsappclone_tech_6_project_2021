import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Test app',
      home: FlatButtonDisplay(),
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        accentColor: Colors.blue,
        buttonColor: Colors.blue,
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          'Test App',
          style: TextStyle(
            color: Colors.blue[500],
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('asset/image/andriodDev.jpg'),
      height: 50.0,
      width: 50.0,
    );
  }
}

class IconDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.access_time,
        color: Colors.blue[500],
        size: 20.0,
      ),
    );
  }
}

class FlatButtonDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50.0,
          width: 100.0,
          color: Colors.blue,
          child: FlatButton(
            child: Text('Okay', style: TextStyle(color: Colors.white),),
            onPressed: null,
            color: Theme.of(context).buttonColor,
          ),
        ),
      ),
    );
  }
}

class IconButtonDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: IconButton(
        onPressed: null,
        icon: Icon(Icons.add, color: Colors.red,),
      ),
    );
  }
}

class RaisedButtonIconDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: RaisedButton.icon(onPressed: null, icon: Icon(Icons.add), label: Text('Add')),
    );
  }
}

class PlaceholderDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Placeholder(
        color: Colors.green[700],
      ),
    );
  }
}






