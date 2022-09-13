import 'package:flutter/material.dart';
import 'bookingUi.dart';
import 'travelCard.dart';

class subCategories extends StatefulWidget {
  Map data;
  subCategories({required this.data,Key? key}) : super(key: key);

  @override
  State<subCategories> createState() => _subCategoriesState();
}

class _subCategoriesState extends State<subCategories> {
  Map nextPage={};

  void initState(){
    super.initState();
    nextPage=widget.data['detail'];
    print(nextPage['info']);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: hotelData.length,
          itemBuilder: (context, index) => travelCard(
            hotelData[index]['photo'],
            hotelData[index]['info'],
            hotelData[index]['Location'],
            hotelData[index]['rating'],
          ),
        ),
      ),
    );
  }
}