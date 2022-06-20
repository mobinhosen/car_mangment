import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(

      fontSize: 15,
      fontWeight: FontWeight.normal);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Add here information about oil, filters replacement, tires change and other services.',
      style: optionStyle,
    ),
    Text(
      'Add here information about fines, taxes, insurance and other car documents.',
      style: optionStyle,
    ),
    Text(
      'Add here reminders about oil change, insurance',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Car Notes'),
      ),
      body:
      Center(
        child: _widgetOptions.elementAt(_selectedIndex),

      ),
        floatingActionButton: FloatingActionButton.extended(onPressed: () {
          //add value
        },
            label:const Text("ADD"),
        icon: const Icon(Icons.add),
          backgroundColor: Colors.lightBlueAccent,
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.car_repair),
              label: 'Repairs',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_note_sharp),
              label: 'Papers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: 'Reminders',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          backgroundColor: Colors.blue,
        ),

    );
  }
}
