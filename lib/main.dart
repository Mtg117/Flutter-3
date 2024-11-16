import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String email = "";
  String password = "";
  String message = "";
  @override
  Widget build(BuildContext context) {
    TextEditingController emailText = TextEditingController();
    TextEditingController passwordText = TextEditingController();
    String trueEmail = "tariq@gmail.com";
    String truePassword = "112233";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'M2 Company',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notification_add),
              color: Colors.white,
            ),
          ],
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                color: Colors.teal,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: emailText,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "your email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: passwordText,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "your password",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  email = emailText.text;
                  password = passwordText.text;
                  if (email == trueEmail && password == truePassword) {
                    message = "Welcome";
                  } else {
                    message = "Invalid email or password";
                  }
                });
              },
              child: Text(
                "Click",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.teal,
                ),
              ),
            ),
            Text(
              "${message} ",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
