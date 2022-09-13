import 'package:flutter/material.dart';

import '../homepage.dart';

import 'myBooking.dart';
import 'profilePage.dart';

class bookingUi extends StatefulWidget {
  const bookingUi({Key? key}) : super(key: key);

  @override
  State<bookingUi> createState() => _bookingUiState();
}

class _bookingUiState extends State<bookingUi> {
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


  List<Widget> pages = [
    Home(),
    myBooking(),
    profilePage(),

  ];

  Widget currentPage() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return myBooking();
      default:
        return profilePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF6F7FF),
      body: currentPage(),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_sharp),
              label: 'My Booking',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
List<Map> hotelData = [
  {
    'hotelname': 'Luxury Hotel',
    'Location': 'Lonavla',
    'rating': 4,
    'url':
    "https://images.homify.com/w_600,c_fill,q_auto,a_0,f_auto/v1608449910/p/photo/image/3707756/front_view.jpg",
    'detail':{
      'photo':"https://www.zricks.com/img/UpdatesBlog/099a3ad9-22d8-4129-b2e8-179f283c6d2bamhedabad.jpg ",
      'info':"rjvi bvyqbrc vyyiqb uqgvqc ihvuo ouhviqjc ouvhuo ",
    },

  },
  {
    'hotelname': 'Spring Villa',
    'Location': 'Khandala',
    'rating': 3,
    'url':
    "https://cdn.trendir.com/wp-content/uploads/old/house-design/modern-vertical-house-towers-among-the-trees.jpg",
  },
  {
    'hotelname': 'Ashiana Bunglow',
    'Location': 'LionPoint',
    'rating': 5,
    'url':
    "https://www.zricks.com/img/UpdatesBlog/099a3ad9-22d8-4129-b2e8-179f283c6d2bamhedabad.jpg",
  },
  {
    'hotelname': 'Luxury Hotel',
    'Location': 'Lonavla',
    'rating': 4,
    'url':
    "https://images.homify.com/w_600,c_fill,q_auto,a_0,f_auto/v1608449910/p/photo/image/3707756/front_view.jpg",
  },
  {
    'hotelname': 'Spring Villa',
    'Location': 'Khandala',
    'rating': 3,
    'url':
    "https://cdn.trendir.com/wp-content/uploads/old/house-design/modern-vertical-house-towers-among-the-trees.jpg",
  },
  {
    'hotelname': 'Ashiana Bunglow',
    'Location': 'LionPoint',
    'rating': 5,
    'url':
    "https://www.zricks.com/img/UpdatesBlog/099a3ad9-22d8-4129-b2e8-179f283c6d2bamhedabad.jpg",
  },
];

List<Map> visitdata = [
  {
    'spotname': 'Khandala-Waterfall',
    'Location': 'Khandala',
    'rating': 4,
    'url':
    "https://images.homify.com/w_600,c_fill,q_auto,a_0,f_auto/v1608449910/p/photo/image/3707756/front_view.jpg",
  },
  {
    'hotelname': 'Spring Villa',
    'Location': 'Khandala',
    'rating': 3,
    'url':
    "https://cdn.trendir.com/wp-content/uploads/old/house-design/modern-vertical-house-towers-among-the-trees.jpg",
  },
  {
    'hotelname': 'Ashiana Bunglow',
    'Location': 'LionPoint',
    'rating': 5,
    'url':
    "https://www.zricks.com/img/UpdatesBlog/099a3ad9-22d8-4129-b2e8-179f283c6d2bamhedabad.jpg",
  },
  {
    'hotelname': 'Luxury Hotel',
    'Location': 'Lonavla',
    'rating': 4,
    'url':
    "https://images.homify.com/w_600,c_fill,q_auto,a_0,f_auto/v1608449910/p/photo/image/3707756/front_view.jpg",
  },
  {
    'hotelname': 'Spring Villa',
    'Location': 'Khandala',
    'rating': 3,
    'url':
    "https://cdn.trendir.com/wp-content/uploads/old/house-design/modern-vertical-house-towers-among-the-trees.jpg",
  },
  {
    'hotelname': 'Ashiana Bunglow',
    'Location': 'LionPoint',
    'rating': 5,
    'url':
    "https://www.zricks.com/img/UpdatesBlog/099a3ad9-22d8-4129-b2e8-179f283c6d2bamhedabad.jpg",
  },
];

List<Map> favouritedata = [
  {
    'spotname': 'Khandala-Waterfall',
    'Location': 'Khandala',
    'rating': 4,
    'url':
    "https://images.homify.com/w_600,c_fill,q_auto,a_0,f_auto/v1608449910/p/photo/image/3707756/front_view.jpg",
  },
  {
    'hotelname': 'Spring Villa',
    'Location': 'Khandala',
    'rating': 3,
    'url':
    "https://cdn.trendir.com/wp-content/uploads/old/house-design/modern-vertical-house-towers-among-the-trees.jpg",
  },
  {
    'hotelname': 'Ashiana Bunglow',
    'Location': 'LionPoint',
    'rating': 5,
    'url':
    "https://www.zricks.com/img/UpdatesBlog/099a3ad9-22d8-4129-b2e8-179f283c6d2bamhedabad.jpg",
  },
  {
    'hotelname': 'Luxury Hotel',
    'Location': 'Lonavla',
    'rating': 4,
    'url':
    "https://images.homify.com/w_600,c_fill,q_auto,a_0,f_auto/v1608449910/p/photo/image/3707756/front_view.jpg",
  },
  {
    'hotelname': 'Spring Villa',
    'Location': 'Khandala',
    'rating': 3,
    'url':
    "https://cdn.trendir.com/wp-content/uploads/old/house-design/modern-vertical-house-towers-among-the-trees.jpg",
  },
  {
    'hotelname': 'Ashiana Bunglow',
    'Location': 'LionPoint',
    'rating': 5,
    'url':
    "https://www.zricks.com/img/UpdatesBlog/099a3ad9-22d8-4129-b2e8-179f283c6d2bamhedabad.jpg",
  },
];