import 'package:flutter/material.dart';

void main() {
  runApp(const LoginFormApp());
}

class LoginFormApp extends StatelessWidget {
  const LoginFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test login form',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12.0),
              child: SizedBox(
                width: 250.0,
                child: TextField(
			      decoration: InputDecoration(
				    hintText: 'Login',
				    fillColor: Colors.white,
				    filled: true,
				    prefixIcon: Icon(
                        Icons.account_box,
                        size: 28.0,
                    ),
                    contentPadding: EdgeInsets.all(20.0),
			      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: SizedBox(
                width: 250.0,
                child: TextField(
			      decoration: InputDecoration(
				    hintText: 'Password',
				    fillColor: Colors.white,
				    filled: true,
				    prefixIcon: Icon(
                        Icons.password_sharp,
                        size: 28.0,
                    ),
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
			    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
