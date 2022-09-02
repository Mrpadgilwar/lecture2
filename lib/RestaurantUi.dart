 import 'package:flutter/material.dart';

import 'utils/space.dart';

class RastaurantUi extends StatelessWidget {
  const RastaurantUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
           onPressed: (){},
            icon:const Icon(Icons.menu)
        ),
        title: Column(
          children: const [
            Text("Restaurant Menu",
              style: TextStyle(color: Colors.black, fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.notification_important)),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.perm_identity_outlined)),
        ],
        bottom:PreferredSize(
          preferredSize: const Size(10,70),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for your favorite food',
                  labelStyle: const TextStyle(color:Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color:Colors.white),
                  ),
                  filled: true,
                  fillColor:Colors.white,
                  prefixIcon: IconButton(onPressed: (){},
                    icon: const Icon(Icons.search),
                  ),
                  suffixIcon:
                  IconButton(onPressed: (){},
                    icon: const Icon(Icons.mic),
                  ),)
            ),
          ),
        ),
      ),
            body:SingleChildScrollView(
            child:
            Column(
              children: [
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Column(
          children: [
              IconButton(onPressed: (){},
            icon: const Icon(Icons.pedal_bike_rounded),
            color: Colors.blue,),
            const Text('Delivery',
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
      ],
        ),
            horizontalSpace(70),
            Column(
              children: [
                IconButton(onPressed: (){},
                  icon: const Icon(Icons.dining),
                  color: Colors.red,),
                const Text('Dining',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
            horizontalSpace(70),
            Column(
              children: [
                IconButton(onPressed: (){},
                  icon: const Icon(Icons.percent_sharp),
                  color: Colors.purpleAccent,),
                const Text('Discount',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
            horizontalSpace(70),
            Column(
              children: [
                IconButton(onPressed: (){},
                  icon: const Icon(Icons.hotel_class_rounded),
                  color: Colors.pinkAccent,),
                const Text('Hotel Rating',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
              ],
               ),

                ],),verticalSpace(15),
                Row(
                  children: [
                    Container(
                      height: 175,
                      width: 175,
                      child: Image.network('https://tse1.mm.bing.net/th?id=OIP.'
                          '6h88TiWAP9nAZ-c_bx4dwgHaFk&pid=Api&P=0'
                        ,fit:BoxFit.fill,),
                    ),
                    horizontalSpace(70),
                    const Text('Pizza',
                      style: TextStyle(fontSize: 25
                          ,fontWeight: FontWeight.bold),),
                   // const Text('Rs.300',
                     // style: TextStyle(fontSize: 15
                        //  ,fontWeight: FontWeight.bold)),
                   ], ),
                    verticalSpace(15),
                Row(
                  children: [
                    Container(
                      height: 175,
                      width: 175,
                      child: Image.network('https://tse4.mm.bing.net/th?id=OIP.'
                          'X2jf70qEWd5_KFyjnHfWoQHaEr&pid=Api&P=0'
                        ,fit:BoxFit.fill,),
                    ),
                    horizontalSpace(70),
                    const Text('Veggie Burger',
                      style: TextStyle(fontSize: 25
                          ,fontWeight: FontWeight.bold),),
                  ],),
                verticalSpace(15),
                Row(
                  children: [
                    Container(
                      height: 175,
                      width: 175,
                      child: Image.network('https://www.gourmetads.com/wp-content/'
                          'uploads/2020/10/fast-food-recipes-square.jpg'
                        ,fit:BoxFit.fill,),
                    ),
                    horizontalSpace(70),
                    const Text('Fried Chiken',
                      style: TextStyle(fontSize: 25
                          ,fontWeight: FontWeight.bold),),
                  ],),
                verticalSpace(15),
                Row(
                  children: [
                    Container(
                      height: 175,
                      width: 175,
                  child: Image.network('https://tse1.mm.bing.net/th?id=OIP.'
                      'y1OT6M_y-AKgGip72vbr1QHaEk&pid=Api&P=0'
                    ,fit:BoxFit.fill,),
                    ),
                    horizontalSpace(70),
                    const Text('French Fres',
                      style: TextStyle(fontSize: 25
                          ,fontWeight: FontWeight.bold),),
                     ] ),

                     verticalSpace(15),
                Row(
                  children: [
                    Container(
                      height: 175,
                      width: 175,
                        child: Image.network('https://tse1.mm.bing.net/'
                            'th?id=OIP.3plVN0a7qQwBGvhF5NT6vAHaFj&pid=Api&P=0'
                          ,fit:BoxFit.fill,),
                         ),
                    horizontalSpace(70),
                    const Text(' Mix Vegitable Roll',
                      style: TextStyle(fontSize: 25
                          ,fontWeight: FontWeight.bold),),
                  ]
                ),
           ] ),
          ),);
  }
}
