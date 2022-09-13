import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lecture1/FireBaseRealTime.dart';
import 'Home.dart';
import 'Register.dart';


class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  initState() {
    super.initState();
    FireBaseRealTime.selectValue();
    Timer(Duration(seconds: 3), () {
      setState(() {});
    });
  }

  bool validation = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg1.jpg'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Icon(Icons.person_outline,
                          color: Colors.black, size: 140),
                      SizedBox(height: 13),
                      Text(
                        "Let's sign in",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Make your stay Beautifull',
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
                            controller: emailController,
                            validator: (value) {
                              return (value!.isEmpty) ? 'Enter Email' : null;
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
                                color: Colors.black54,
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
                              return (value!.isEmpty) ? 'Enter password' : null;
                            },
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock, size: 30),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forget Password?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(height: 10),
                      MaterialButton(
                        color: Colors.blueAccent,
                        onPressed: () async {
                          await formKey.currentState!.validate();
                          bool match = false;

                          FireBaseRealTime.data.forEach((element) {
                            if (element['email'] == emailController.text &&
                                element['password'] ==
                                    passwordController.text) {
                              match = true;

                              // Navigator.pushNamed(
                              //     context, 'Home');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            }
                          });

                          if (!match)
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Invalid Credential'),
                              ),
                            );
                        },
                        height: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text('Login'),
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an Account?",
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Register()));
                            },
                            child: Text(
                              'Register',
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