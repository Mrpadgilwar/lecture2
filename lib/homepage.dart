import 'package:flutter/material.dart';

import 'utils/space.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon:(Icon(Icons.menu)),
        ),
        backgroundColor: Colors.white,
        titleSpacing: 10,
        title: Text(
          "Book_My_Stay",
          style: TextStyle(
            color: Colors.black,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Billabong',
            fontSize: 35,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
              onPressed: (){}),

          IconButton(
              icon: Icon(
                Icons.logout_rounded,
                color: Colors.black,
                size: 35,
              ),
              onPressed: (){}),
          // iconButton(icon: Icons.search),
          // iconButton(icon: Icons.add_box),
        ],
      ),



      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index)=>setState(() => currentIndex= index),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),
              label: 'Search',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_sharp),
              label: 'Offer',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue
          ),

        ],

      ),
    );
  }
}