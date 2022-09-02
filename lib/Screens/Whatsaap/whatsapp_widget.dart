import 'package:flutter/material.dart';



Widget iconButton({
  IconData icon = Icons.more_vert,
  Function()? onTap,
})=>
    IconButton(onPressed: onTap,
      icon: Icon(icon),
    );

Widget labels(String label, {Color color= Colors.white, double size = 14.0}) => Text(
  label.toUpperCase(),
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: color,
    fontSize: size,
  ),
);

List<Map> data = [

  {
    'image':'Asssets/abc.jpeg',
    'title':'Shaurya Flutter Training',
    'subtitle':'Janvi : hello gm...',
    'date' :'today',
  },
  {
    'image':'Asssets/doll.jpeg',
    'title':'Think Quotient',
    'subtitle':'Good Morning',
    'date' :'today',
  },
  {
    'image':'Asssets/krushna.jpeg',
    'title':'!!!Only for Fresher Job!!!',
    'subtitle':'Deepak : call me...',
    'date' :'today',
  },
  {
    'image':'Asssets/smily.jpeg',
    'title':'It Job Opportunities',
    'subtitle':'Akshay : Hello...',
    'date' :'today',
  },
  {
    'image':'Asssets/tedy.jpeg',
    'title':'Family Group',
    'subtitle':'Bhavani : tried...',
    'date' :'today',
  },{
    'image':'Asssets/krushna.jpeg',
    'title':'SS Old IBM Group',
    'subtitle':'Bhavani : tried...',
    'date' :'today',
  },{
    'image':'Asssets/doll.jpeg',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'today',
  },{
    'image':'Asssets/smily.jpeg',
    'title':'!!!Only Job!!!',
    'subtitle':'Bhavani : tried...',
    'date' :'today',
  }, {
    'image':'Asssets/abc.jpeg',
    'title':'Family Group Only',
    'subtitle':'Bhavani : tried...',
    'date' :'today',
  }, {
    'image':'Asssets/tedy.jpeg',
    'title':'Think Quotient Classes ',
    'subtitle':'Good Morning',
    'date' :'today',
  },



/*  {
    'image': 'assets/smiley.jpg',
    'title':'Think Quotient',
    'subtitle':'Karve Road : tried...',
    'date' :'9:04 AM',
  },
  {
    'image':'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/1200px-WhatsApp.svg.png',
    'title':'Rohan Kamble',
    'subtitle':'Good Morning : tried...',
    'date' :'9:04 AM',
  },
  {
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },
  {
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },{
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },{
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },{
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },{
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },{
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },{
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },{
    'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bOmUEMBz9d0PrAHL-pjm382_VhiCmeuVEgrcgIQ&s',
    'title':'Real Estate Advertize Bangalore Pune Mumbai',
    'subtitle':'Bhavani : tried...',
    'date' :'9:04 AM',
  },*/

];

