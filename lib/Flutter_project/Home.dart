

import 'package:flutter/material.dart';

import 'bookingUi.dart';
import 'infoPage.dart';
import 'travelCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  // List<String> Urls = [
  //   "https://images.homify.com/w_600,c_fill,q_auto,a_0,f_auto/v1608449910/p/photo/image/3707756/front_view.jpg",
  //   "https://cdn.trendir.com/wp-content/uploads/old/house-design/modern-vertical-house-towers-among-the-trees.jpg",
  //   "https://www.zricks.com/img/UpdatesBlog/099a3ad9-22d8-4129-b2e8-179f283c6d2bamhedabad.jpg",
  //   "https://i.pinimg.com/originals/f0/1e/ec/f01eec672cc51e6cbd18cd342687b932.jpg",
  //   "https://r2.community.samsung.com/t5/image/serverpage/image-id/2390332i01DAA6D2BE7AB895/image-size/large?v=v2&px=999",
  //   "https://www.localguidesconnect.com/t5/image/serverpage/image-id/922916i56E81A293061ADF6/image-size/large?v=v2&px=999",
  //   "https://bizimages.withfloats.com/actual/61e50532a96ae3000145a917.jpg",
  //   "https://p0.pikist.com/photos/535/980/cave-buddhist-karla-india-lonavala-maharashtra-pune-architecture-design.jpg",
  //   "https://www.tripiwiki.com/images/places/uploads/Lohagad-Fort9308.jpg",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      drawer: Drawer(),

      appBar: AppBar(
        leading: Icon(Icons.menu,color:Colors.black),
        title: GestureDetector(
          child: Text('Quick Book',
            style:TextStyle(
              color: Colors.black87,
            ),),
          onTap: () {},
        ),
        backgroundColor: Colors.white,
        titleSpacing: 10,
        actions: [
          IconButton(
              icon: Icon(
                Icons.logout_rounded,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {
              }),
        ],
      ),
      // drawer: Drawer(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome !!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Pick your Destination',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 20.0),
              Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Color(0x55434343),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: 'Search for Cottage, Home...',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 30.0),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TabBar(
                          indicatorColor: Color(0xFFFE8C68),
                          unselectedLabelColor: Color(0xFF555555),
                          labelColor: Color(0xFFFE8C68),
                          labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          tabs: [
                            Tab(
                              text: 'Trending',
                            ),
                            Tab(
                              text: 'Visit',
                            ),
                            Tab(
                              text: 'Favourites',
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 300.0,
                          child: TabBarView(
                            children: [
                              Container(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: hotelData.length,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  infoPage(
                                                      data: hotelData[index]),
                                            ),);
                                        },
                                        child: travelCard(
                                          hotelData[index]['url'],
                                          hotelData[index]['hotelname'],
                                          hotelData[index]['Location'],
                                          hotelData[index]['rating'],
                                        ),
                                      ),
                                ),
                              ),
                              Container(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: hotelData.length,
                                  itemBuilder: (context, index) =>
                                      travelCard(
                                        hotelData[index]['url'],
                                        hotelData[index]['hotelname'],
                                        hotelData[index]['Location'],
                                        hotelData[index]['rating'],
                                      ),
                                ),
                              ),
                              Container(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: hotelData.length,
                                  itemBuilder: (context, index) =>
                                      travelCard(
                                        hotelData[index]['url'],
                                        hotelData[index]['hotelname'],
                                        hotelData[index]['Location'],
                                        hotelData[index]['rating'],
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 200,
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.cyan),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}