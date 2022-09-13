import 'package:flutter/material.dart';

class infoPage extends StatefulWidget {
  Map data;
  infoPage({required this.data,Key? key}) : super(key: key);
  @override
  State<infoPage> createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 200,
                  width: 370,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://www.tripiwiki.com/images/places/uploads/Lohagad-Fort9308.jpg", ),fit: BoxFit.fill
                      )
                  ),
                ),
              ),
              Text('Spring Villa Lonavla',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Your Booking Details',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                      // Icon(Icons.person_outline),
                    ),

                  ),
                  Row(
                    children: [
                      Icon(Icons.person_outline),
                      Text('Name')
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}