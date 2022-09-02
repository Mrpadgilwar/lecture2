

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Registrationform.dart';
import 'Screens/Whatsaap/whatsappScreen.dart';
import 'Screens/Whatsaap/whatsappdetail.dart';
import 'UiFlipkart.dart';



Future<bool> getValue() async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.getBool('login') ?? false;
}
  main() {
    WidgetsFlutterBinding.ensureInitialized();
    getValue().then((value) {
      runApp(
        MaterialApp(debugShowCheckedModeBanner: false,
          initialRoute: value ? 'WhatsUp' : 'Registration',
          routes: {
            '/': (context) => Hello(),
            'Registration': (context) => Registration(),
            'UiFlipkart': (context) => const UiFlipkart(),
            'WhatsUp': (context) => WhatsUp(),
            'WatsappDetail': (context) => WatsappDetail(),
            '': (context) => WatsappDetail(),
          },
          theme: ThemeData.light(),
        ),
      );
    });
  }

  class Hello extends StatelessWidget{

  Widget build(BuildContext context){
  return Scaffold(
  body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Center(
  child: Text('Hello World',
  style: TextStyle(
  fontSize:50.0,
  // color: Colors.green,
  fontWeight:FontWeight.bold,
  ),
  ),
  ),
  MaterialButton(onPressed: (){
  Navigator.pushNamed(context, 'WhatsUp');
  },child: Text('WhatsUp'),
  ),
  MaterialButton(onPressed: (){
  Navigator.pushNamed(context, 'Registration');
  },child: Text('Registration'),
  ),
  MaterialButton(onPressed: (){
  Navigator.pushNamed(context, 'UiFlipkart');
  },child: Text('UiFlipkart'),
  ),
  ],

  ),

  );
  }
  }