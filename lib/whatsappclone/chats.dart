import 'package:flutter/material.dart';
import './user_chat.dart';

class Chats extends StatefulWidget {
  final String chatsRoute = '/chatsRoute';
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Map<String, String>> _chatList = [
    {
      'title': 'Godwin',
      'description': 'Remember to bring that stuff today',
      'image': 'asset/image/andriodDev.jpg'
    },
    {
      'title': 'Godwin1',
      'description': 'Remember to bring that stuff today',
      'image': 'asset/image/andriodDev.jpg'
    },
    {
      'title': 'Godwin2',
      'description': 'Remember to bring that stuff today',
      'image': 'asset/image/andriodDev.jpg'
    },
    {
      'title': 'Godwin3',
      'description': 'Remember to bring that stuff today',
      'image': 'asset/image/andriodDev.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.message),
            backgroundColor: Colors.grey[800],
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, UserChat.userChatRoute,
                        arguments: {
                          'image': _chatList[index]['image'],
                          'username': _chatList[index]['title']
                        });
                  },
                  child: ListTile(
                    title: Text(_chatList[index]['title']),
                    subtitle: Row(
                      children: [
                        Icon(Icons.done_all),
                        Text(_chatList[index]['description']),
                      ],
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(_chatList[index]['image']),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Divider(
                    color: Colors.grey,
                    height: 1.0,
                  ),
                );
              },
              itemCount: _chatList.length)),
    );
  }
}
