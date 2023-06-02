import 'package:firstcry/startpage.dart';
import 'package:flutter/material.dart';

class MyBottomNavBarScreen extends StatefulWidget {
  @override
  _MyBottomNavBarScreenState createState() => _MyBottomNavBarScreenState();
}

class _MyBottomNavBarScreenState extends State<MyBottomNavBarScreen> {
  int _currentIndex = 0;
  bool open = false;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }  final ScreenList = [

     const homepage(),
     const Page2(),
    Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(child: Image.network('https://cdn.fcglcdn.com/brainbees/images/m/pall_new.png')),
            SizedBox(width: 8),
            InkWell(
              onTap: (){

              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shop for', style: TextStyle(color: Colors.black, fontSize: 12)),
                  Text('All', style: TextStyle(color: Colors.black, fontSize: 12)),
                ],
              ),
            ),
            Icon(Icons.keyboard_arrow_down_sharp)
          ],
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      open == true ? open = false : open = true;
                    });
                  },
                  icon: Icon(
                    open == true ? Icons.close_rounded : Icons.search_rounded,
                    size: 30,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),

      body: Center(
        child:     ScreenList.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}