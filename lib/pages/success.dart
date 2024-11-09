import 'package:flutter/material.dart';

class SuccessLoginScreen extends StatelessWidget {
  const SuccessLoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Success', style: TextStyle(color: Colors.white70, fontSize: 20)),
          ]
        )
      )
	);
  }
}