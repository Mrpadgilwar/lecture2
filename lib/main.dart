import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lecture1/Newwork1.dart';

import 'Homework.dart';
import 'Homework2.dart';
import 'Registrationform.dart';
import 'RestaurantUi.dart';
import 'Screens/Whatsaap/Lesson3.dart';
import 'Screens/Whatsaap/whatsappScreen.dart';
import 'UiFlipkart.dart';

     void main() {
       runApp(
         MaterialApp(debugShowCheckedModeBanner: false,
            home: //RastaurantUi(),
           WhatsUp(),

              // Homework()
            //Homework2(),
             //  Newwork1(),
           // Registration(),
            //Lecture3(),
      ),
       );
}

class Lecture2 extends StatelessWidget {
  EdgeInsets padding = const EdgeInsets.only(left: 30.0);
  Radius radius = const Radius.circular(20.0);
  String breakfast = 'Breakfast';
  String breadApple = 'Bread,\nPeanut Butter,\nApple';
  String kcal = '525';
  String txtKCal = 'kcal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
        height: 250.0,
        width: 150.0,
        padding: padding,
        margin: padding,
        decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.red, width: 3.0),
    gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.orange.shade800, Colors.orange.shade200],
    ),
    boxShadow: const [
    BoxShadow(
    spreadRadius: 1,
    blurRadius: 20,
      color: Colors.blue,
      offset: Offset(20, 20),
    ),
    ],
          borderRadius: BorderRadius.only(
            topLeft: radius,
            bottomLeft: radius,
            bottomRight: radius,
            topRight: const Radius.circular(100.0),
          ),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                breakfast,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                breadApple,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Text(
                    kcal,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    txtKCal,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
          SizedBox(height: 50,),
          Container(
            color: Colors.green.shade300,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children:  const [
                Icon(Icons.add_alarm_sharp,),
                Icon(Icons.add_alarm_sharp,),
                Icon(Icons.add_alarm_sharp,),
                Icon(Icons.add_alarm_sharp,),
                Icon(Icons.add_alarm_sharp,),
              ],
            ),
          ),
        ],
        ),
    );
  }
}

class  StatefullDemo extends StatefulWidget {
  @override
  State<StatefullDemo> createState() => StatefullDemoState();
}

class StatefullDemoState extends State<StatefullDemo> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        title: GestureDetector(
          child: Text('Title'),
          onTap: () {},
        ),
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.login_sharp),
          SizedBox(
            width: 20.0,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(0, 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.notifications),
              Icon(Icons.login_sharp),
              Icon(Icons.notifications),
              Icon(Icons.login_sharp),
              Icon(Icons.notifications),
              Icon(Icons.login_sharp),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.extended(
                  elevation: 15.0,

                  onPressed: () {
                    setState(() {
                      number <= 0 ? number = 0 : number--;
                    });
                  },
                  icon: Icon(Icons.remove),
                  label: Text('Minus'),
                  // child: Icon(Icons.add),
                ),
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 30.0),
                ),
                FloatingActionButton.extended(
                  elevation: 15.0,

                  onPressed: () {
                    number++;
                    setState(() {});
                  },
                  label: Icon(Icons.add),
                  icon: Text('Plus'),
                  // child: Icon(Icons.add),
                )
              ],
            ),
            SizedBox(height: 50),
            Container(
              color: Colors.yellow,
              child: GestureDetector(
                onTap: () {
                  print(' Click on Row');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('Plus'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            GestureDetector(
                child: TextButton(onPressed: () {}, child: Text('Submit'))),
            MaterialButton(
              onPressed: () {},
              color: Colors.green,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    width: 2.0,
                    color: Colors.red,
                  )),
              child: Text('Login'),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Sumbit'))
          ],
        ),
      ),
    );
  }
}
class Lecture4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
        height: 200,
        width: 200,

          decoration: const BoxDecoration(
            color: Colors.red,
           // border: Border.all(color: Colors.black, width: 3.0),
            borderRadius:BorderRadius.only(
              topRight: Radius.circular(30.0),

              bottomLeft: Radius.circular(30.0),

            ),
    )
          ),
    );
  }
}

