import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lecture1/FireBaseRealTime.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final ImagePicker _picker = ImagePicker();

  File? file;

  getImage() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);

    file = File(photo!.path);
    setState(() {});
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg1.jpg'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.black),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          getImage();
                        },
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          backgroundImage: file == null
                              ? NetworkImage(
                              'https://yt3.ggpht.com/ytc/AMLnZu89ysS9G7giLMo1jVukCqUyHpKvOEeOemhuX4klkQ=s900-c-k-c0x00ffffff-no-rj')
                              : FileImage(file!) as ImageProvider,
                        ),
                      ),
                      // Icon(Icons.person_outline,color: Colors.grey[300],size: 140),
                      SizedBox(height: 13),
                      Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Personal Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: nameController,
                            validator: (value){
                              return (value!.isEmpty) ? 'Please Enter Name':null;
                            },
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon:
                                Icon(Icons.person_outline, size: 30),
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: emailController,
                            validator: (value) {
                              bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(emailController.text);

                              return (value!.isEmpty)
                                  ? 'Please Enter Email'
                                  : (!emailValid)
                                  ? 'Please Enter Valid Email'
                                  : null;
                            },
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.mail, size: 30),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: phoneController,
                            validator: (value){
                              bool phoneRegx = RegExp( r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                  .hasMatch(phoneController.text);
                              return (value!.isEmpty)?'Please Enter phone number':(!phoneRegx)?'Please Enter Valid phone number':
                              null;
                            },
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.phone_android, size: 30),
                              labelText: 'Phone no',
                              labelStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              bool passwordRegx = RegExp(
                                  r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$'
                              )
                                  .hasMatch(passwordController.text);
                              return (value!.isEmpty)
                                  ? 'Please Enter password'
                                  : (!passwordRegx)
                                  ? 'Please Enter Valid Password'
                                  : null;
                            },
                            obscureText: true,
                            style: TextStyle(
                              // color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.lock, size: 30),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),


                      SizedBox(height: 10),
                      MaterialButton(
                        color: Colors.blue,
                        onPressed: () {
                          print('*${formKey.currentState!.validate()}');
                          if(formKey.currentState!.validate()){
                            FireBaseRealTime.InsertValue(context,
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              mobile: phoneController.text,
                            );
                            Timer(Duration(seconds: 3), () {
                              Navigator.pushNamed(context, 'Login');
                            });

                          }
                          setState(() {
                          });
                        },
                        height: 40,
                        child: Text('Create Account'),
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already Have an Account? ",
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}