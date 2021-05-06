import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
   List<Map<String, String>> _callsList = [{'title': 'Godwin', 'date': 'Today, 09:42', 'image': 'asset/image/andriodDev.jpg'}, {'title': 'Godwin', 'date': 'Today, 09:02', 'image': 'asset/image/andriodDev.jpg'}, {'title': 'Godwin', 'date': 'Today, 09:12', 'image': 'asset/image/andriodDev.jpg'}, {'title': 'Godwin', 'date': 'Today, 09:32', 'image': 'asset/image/andriodDev.jpg'}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: null, child: Icon(Icons.add_call),
          backgroundColor: Colors.grey[800],),
        ],
      ),
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_callsList[index]['title']),
                subtitle: Row(
                  children: [
                    Icon(Icons.call_received, 
                    color: Colors.grey,),
                    Text(_callsList[index]['date']),
                  ],
                ),
                leading: CircleAvatar(child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                image: DecorationImage(
                image: AssetImage(_callsList[index]['image'])
                ),
                ),
                ),),
                trailing: IconButton(icon: Icon(Icons.call,
                 color: Colors.grey,), onPressed: null),
              );
            },
            separatorBuilder: (context, index){
              return Divider(color: Colors.grey,);
            },
            itemCount: _callsList.length),
      ),
    );
  }
}