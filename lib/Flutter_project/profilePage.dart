import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child:ListView(
              children:  [
                Text("Settings",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Icon(Icons.person,
                      color: Colors.green,),
                    SizedBox(width: 8,),
                    Text("Account",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
                Divider(
                  height: 15,
                  thickness: 2,
                ),
                SizedBox(height: 10,),

                GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title:  Text("Change Password",),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Option 1"),
                                Text("Option 2"),
                                Text("Option 3"),
                              ],),
                            actions:  [
                              FlatButton(
                                onPressed:(){
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),),

                            ],
                          );
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Change Password",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                          color: Colors.grey[600],),),
                      Icon ( Icons.arrow_forward_ios,
                        color: Colors.grey,),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title:  Text("Context Setting",),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Option 1"),
                                Text("Option 2"),
                                Text("Option 3"),
                              ],),
                            actions:  [
                              FlatButton(
                                onPressed:(){
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),),

                            ],
                          );
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Context Setting",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                          color: Colors.grey[600],),),
                      Icon ( Icons.arrow_forward_ios,
                        color: Colors.grey,),
                    ],
                  ),
                ),
                SizedBox(height:20),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title:  Text("Social",),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Option 1"),
                                Text("Option 2"),
                                Text("Option 3"),
                              ],),
                            actions:  [
                              FlatButton(
                                onPressed:(){
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),),

                            ],
                          );
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Social",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                          color: Colors.grey[600],),),
                      Icon ( Icons.arrow_forward_ios,
                        color: Colors.grey,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title:  Text("Language",),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Option 1"),
                                Text("Option 2"),
                                Text("Option 3"),
                              ],),
                            actions:  [
                              FlatButton(
                                onPressed:(){
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),),

                            ],
                          );
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Language",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                          color: Colors.grey[600],),),
                      Icon ( Icons.arrow_forward_ios,
                        color: Colors.grey,),
                    ],
                  ),
                ),
                SizedBox(height:20),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return AlertDialog(
                            title:  Text("Privacy and Security",),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Option 1"),
                                Text("Option 2"),
                                Text("Option 3"),
                              ],),
                            actions:  [
                              FlatButton(
                                onPressed:(){
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),),

                            ],
                          );
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Privacy and Security",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,
                          color: Colors.grey[600],),),
                      Icon ( Icons.arrow_forward_ios,
                        color: Colors.grey,),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Icon(Icons.volume_up_outlined,
                      color: Colors.green,),
                    SizedBox(width: 8,),
                    Text("Notification",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
                Divider(
                  height: 15,
                  thickness: 2,
                ),
                SizedBox(height: 10,),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("New for you",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                          color:Colors.grey[600] ),),
                    Transform.scale(
                        scale: 0.7,
                        child: Switch
                          (value: true, onChanged: (bool val){})),
                  ],
                ) ,
                SizedBox(height: 10,),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Account activity",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                          color:Colors.grey[600] ),),
                    Transform.scale(
                        scale: 0.7,
                        child: Switch
                          (value: true, onChanged: (bool val){})),
                  ],
                ) ,
                SizedBox(height: 10,),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Opportunity",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                          color:Colors.grey[600] ),),
                    Transform.scale(
                        scale: 0.7,
                        child: Switch
                          (value: true, onChanged: (bool val){})),
                  ],
                ) ,
                SizedBox(height: 50,),
                Center(
                  child: OutlinedButton(
                    // padding: EdgeInsets.symmetric(horizontal: 40),
                    // shape:RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      child:Text('Sign Out',style: TextStyle(
                          fontSize: 16,letterSpacing: 2.2,color: Colors.black
                      ),)
                  ),
                ),
              ], ),),
        ),
      ),
    );
  }
}