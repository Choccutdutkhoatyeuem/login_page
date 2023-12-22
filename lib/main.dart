import 'package:flutter/material.dart';
import 'package:login_page/components/MyFieldText.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 217, 230),
          body: Center(
           child: 
            Container(
              width: 350,
              height: 700,

              decoration: BoxDecoration(
               color: Color.fromARGB(255, 255, 255, 255),
               borderRadius: BorderRadius.circular(8),
          ),
             
             //Title 
              child: Column(
                children: [
                   const SizedBox(height: 50),
                  const Text(
                    'You must sign in to join',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 15),

                  const Text(
                    "We're a Team That Guides Each Other",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                    const SizedBox(height: 60),

                    const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Email or UserName',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                   MyFieldText(
                    icon: Icons.person,
                    controller: usernameController,
                    hintText:'Uname@mail.com',
                    obscureText: false, 
                  ),
                   const SizedBox(height: 35),
                                    
                    const Align(
                    alignment: Alignment.centerLeft,
                    child:Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  MyFieldText(
                    controller: passwordController,
                    icon: Icons.lock,
                    hintText:'Password',
                    obscureText: false, 
                  ),

                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal:25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        ),
                      ],
                    ),
                  ),
                   const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {}, 
                     child: SizedBox( 
                    width: 100, 
                    child: Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                     ),
                    style: ElevatedButton.styleFrom(                      
                      primary: Color.fromARGB(255, 32, 12, 179),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), 
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 90),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        ),
                      const SizedBox(width: 3),
                      Text(
                        " Sign Up ",
                        style: TextStyle(
                          color: Colors.black, 
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
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
    );
  } 
}

