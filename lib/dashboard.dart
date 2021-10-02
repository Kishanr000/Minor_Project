import 'package:flutter/material.dart';
import 'package:myown/home.dart';
import 'package:myown/maps.dart';

import 'package:myown/search.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectindex = 0;
  List<Widget> widgetOptions = <Widget>[
    Home(),
    Search(),
    Maps(),
  ];

  void _onItemTap(int index) {
    setState(() {
      selectindex = index;
    });
  }

  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _switch ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Abhi0310',
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  'abcs@gamil.com',
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'images/photo8.jpeg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/photo26.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                title: Text('Dark Theme'),
                trailing: Switch(
                    value: _switch,
                    onChanged: (_newvalue) {
                      setState(() {
                        _switch = _newvalue;
                      });
                    }),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favorites'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: Text('About'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Exit'),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text(
            'MyOwn',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: widgetOptions.elementAt(selectindex),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              // ignore: deprecated_member_use
              title: Text('HOME'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              // ignore: deprecated_member_use
              title: Text('SEARCH'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              // ignore: deprecated_member_use
              title: Text('Maps'),
            ),
          ],
          currentIndex: selectindex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
