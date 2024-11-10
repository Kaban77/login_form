import 'package:flutter/material.dart';
import 'package:login_form/generated/l10n.dart';

class SuccessLoginScreen extends StatelessWidget {
  const SuccessLoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(AppLocalizations.of(context).success, style: TextStyle(color: Colors.white70, fontSize: 20)),
          ]
        )
      )
    );
  }
}