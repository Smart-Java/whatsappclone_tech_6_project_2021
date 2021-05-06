import 'package:flutter/material.dart';
import 'calls.dart';
import 'chats.dart';
import 'status.dart';
import 'camera.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Widget> _listTabsWidget = [Camera(), Chats(), Status(), Calls()];

  List<Widget> _tabs = [
    Tab(
      icon: Icon(Icons.photo_camera),
    ),
    Tab(
      text: 'Chats',
    ),
    Tab(
      text: 'Status',
    ),
    Tab(
      text: 'Calls',
    )
  ];

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Whatsapp',
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              onPressed: null),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: GestureDetector(
                  child: Text('New Group'),
                  onTap: () => print('New Group Clicked'),
                ),
                enabled: true,
              ),
              PopupMenuItem(child: Text('New Broadcast')),
              PopupMenuItem(child: Text('Whatsapp Web')),
              PopupMenuItem(child: Text('Starred Messages')),
              PopupMenuItem(child: Text('Settings')),
            ];
          }),
        ],
        bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: _tabs),
      ),
      body: TabBarView(
        children: _listTabsWidget,
        controller: _tabController,
      ),
    );
  }
}
