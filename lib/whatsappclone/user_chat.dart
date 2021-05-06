import 'package:flutter/material.dart';

class UserChat extends StatefulWidget {
  static var userChatRoute = '/userChat';
  final String username;
  final String imageUrl;

  UserChat({this.imageUrl, this.username});

  @override
  _UserChatState createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map;
    print(routeArgs);
    final _username = routeArgs['username'];
    final _imageUrl = routeArgs['image'];

    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Are you sure you want to exit?'),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: Text('Yes')),
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: Text('No')),
                ],
              );
            });
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(_imageUrl),
              ),
              SizedBox(
                width: 5.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_username),
                  Text(
                    'Last seen 12:00pm',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.videocam, color: Colors.grey[400]),
              onPressed: () {
                print('Video cam');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.call,
                color: Colors.grey[400],
              ),
              onPressed: () {
                print('Video cam');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                print('Video cam');
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Type a message here',
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.attachment),
                                  onPressed: null),
                              IconButton(
                                  icon: Icon(Icons.camera_alt), onPressed: null)
                            ],
                          ),
                          prefixIcon:
                              IconButton(icon: Icon(Icons.insert_emoticon), onPressed: null),
                          // fillColor: Colors.grey[400],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green[700],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.mic),
                        onPressed: null,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
