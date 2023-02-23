import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Statement Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Contact us Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Report problem Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Setting Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'BottomNavigationBar Task',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.deepPurple),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.deepPurple,
        selectedItemColor: Colors.deepPurple,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: Text('Home').data,
            //   backgroundColor: Colors.transparent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: Text('Statement').data,
            //  backgroundColor: Colors.transparent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smartphone),
            label: Text(
              'Contact\nUs',
              textAlign: TextAlign.center,
            ).data,
            //   backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: Text('Report\nProblem').data,
            //backgroundColor: Colors.transparent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: Text('Setting').data,
            //  backgroundColor: Colors.transparent
          ),
        ],
//type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        //  selectedItemColor: Colors.black,
        iconSize: 30,
        onTap: _onItemTapped,
        // elevation: 5
      ),
    );
  }
}
