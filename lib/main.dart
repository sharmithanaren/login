import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Homepage/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset:false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        textTheme: TextTheme(
          headline3: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600
          ),
        ),
        title: Center(child: Text("Login Page")),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wallpaper.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: CircleAvatar(
                  radius: 40,
                  child: Image.asset('assets/images/download1.png'),
                ),
              ),

            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "SegoeUI",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                style: TextStyle(

                ),
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder( borderRadius: BorderRadius.circular(25)),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                ),
              ),
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black54, borderRadius: BorderRadius.circular(25)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Center(child: Text('New User? Create Account'))
          ],
        ),
      ),
      ),
    );
  }
}