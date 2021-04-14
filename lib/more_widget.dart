import 'package:flutter/material.dart';

class MoreWidget extends StatefulWidget {
  @override
  _MoreWidgetState createState() => _MoreWidgetState();
}

class _MoreWidgetState extends State<MoreWidget>
    with SingleTickerProviderStateMixin {
  var _listviewBuilder = [
    'Text1',
    'Text2',
    'Text3',
    'Text4',
    'Text5',
    'Text6',
    'Text7',
    'Text8',
    'Text9'
  ];

  var _gridviewList = [
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg',
    'asset/image/andriodDev.jpg'
  ];

  TabController _tabController;

  List<Tab> _tabs = [
    Tab(
      text: 'Grid',
      icon: Icon(Icons.grid_on),
    ),
    Tab(
      text: 'Table',
      icon: Icon(Icons.table_chart),
    )
  ];

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    super.initState();
  }

  List _appbar = ['Grid', 'Table'];
  List<Widget> _bottomAppbar = [
    Center(
      child: Text('Grid'),
    ),
    Center(
      child: Text('Table'),
    ),
  ];
  int _selectedPage = 0;

  void displayBottomSheet(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (_) {
          return Center(child: Image.asset('asset/image/andriodDev.jpg'));
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0))),
        backgroundColor: Colors.blue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appbar[_selectedPage]),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
        ),
        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('This is a snack bar'),
                      backgroundColor: Colors.blue,
                      action: SnackBarAction(
                        onPressed: (){
                          print('Hello Snack bar');
                        },
                        label: 'UNDO',
                        textColor: Colors.red,
                      ),
                    ));
                  });
            },
          )
        ],
      ),
      drawer: drawerWidget(context),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.amber,
          onTap: (value) {
            setState(() {
              _selectedPage = value;
              print(_selectedPage);
            });
          },
          currentIndex: _selectedPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_on),
              title: Text('Grid'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.table_chart),
              title: Text('Table'),
            ),
          ]),

//this is for the tab view, the tabs.

//      body: TabBarView(
//        controller: _tabController,
//        children: [dynamicGridView(context), tableWidget(context)],
//      ),

      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () => displayBottomSheet(context),
            child: Icon(Icons.add),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _bottomAppbar[_selectedPage],
    );
  }

  Widget staticListView(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text('Listview 1'),
          Text('Listview 2'),
          Text('Listview 3'),
          Text('Listview 4'),
          Text('Listview 5'),
          Text('Listview 6'),
        ],
      ),
    );
  }

  Widget builderListView(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
          itemCount: _listviewBuilder.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${_listviewBuilder[index]}'),
              leading: Icon(Icons.access_time),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }),
    );
  }

  Widget staticGridView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        children: [
          Image.asset('asset/image/andriodDev.jpg'),
          Image.asset('asset/image/andriodDev.jpg'),
          Image.asset('asset/image/andriodDev.jpg'),
          Image.asset('asset/image/andriodDev.jpg'),
        ],
      ),
    );
  }

  Widget dynamicGridView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GridView.builder(
          itemCount: _gridviewList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: Image.asset('${_gridviewList[index]}'),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.favorite),
                title: Center(child: Text('Shop Now')),
              ),
            );
          }),
    );
  }

  Widget tableWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Table(
        border: TableBorder.all(
          color: Colors.black,
          width: 2.0,
        ),
        columnWidths: {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(4),
          2: FlexColumnWidth(3),
          3: FlexColumnWidth(2),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            TableCell(
              child: Center(child: Text('TableCell 1')),
            ),
            TableCell(
              child: Center(child: Text('TableCell 2')),
            ),
            TableCell(
              child: Center(child: Text('TableCell 3')),
            ),
            TableCell(
              child: Center(child: Text('TableCell 4')),
            )
          ])
        ],
      ),
    );
  }

  Widget drawerWidget(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Drawer'),
          ),
          listTileWidget(
              title: 'Grid View', icon: Icons.grid_on, context: context),
          listTileWidget(
              context: context, icon: Icons.table_chart, title: 'Table')
        ],
      ),
    );
  }

  Widget listTileWidget({BuildContext context, String title, IconData icon}) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.black54,
      ),
    );
  }
}
