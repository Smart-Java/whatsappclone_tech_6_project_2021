import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<Map<String, String>> _myStatus = [
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am'
    }
  ];

  List<Map<String, String>> _recentUpdates = [
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    }
  ];

  List<Map<String, String>> _viewedStatus = [
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    }
  ];

  List<Map<String, String>> _mutedStatus = [
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    },
    {
      'image': 'asset/image/andriodDev.jpg',
      'date': 'Today, 09:35Am',
      'name': 'GodWin'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: null, child: Icon(Icons.add),backgroundColor: Colors.grey[800],),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(onPressed: null, child: Icon(Icons.add), backgroundColor: Colors.grey[800],),
        ],
      ),
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ..._myStatus.map((e){
                return ListTile(
                subtitle: Text(e['date']),
                title: Text('My Status'),
                trailing: IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: (){
                    print('this is clicked');
                },
                ),
                leading: CircleAvatar(
                backgroundImage: AssetImage(e['image']),
                ),
                          );
                }).toList(),
                Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    padding: EdgeInsets.only(left: 10.0),
                child: Text('Recent Updates')),
                ..._recentUpdates.map((e){
                return Column(
                  children: [
                    ListTile(
                    subtitle: Text(e['date']),
                    title: Text(e['name']),
                    leading: CircleAvatar(
                    backgroundImage: AssetImage(e['image']),
                    ),
                    ),
                    Padding(
                                padding: EdgeInsets.only(left: 50.0),
                                child: Divider(
                                  height: 1.5,
                                  color: Colors.grey
                                ),
                    ),
                  ],
                );
                }).toList(),
                Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Viewed Updates')),
                ..._viewedStatus.map((e){
                return ListTile(
                subtitle: Text(e['date']),
                title: Text(e['name']),
                leading: CircleAvatar(
                backgroundImage: AssetImage(e['image']),
                ),
                );
                }).toList(),
                Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Muted Updates')),
                ..._mutedStatus.map((e){
                return ListTile(
                subtitle: Text(e['date']),
                title: Text(e['name']),
                leading: CircleAvatar(
                backgroundImage: AssetImage(e['image']),
                ),
                );
                }).toList(),
            ],
          ),
        )
      ),
    );
  }
}