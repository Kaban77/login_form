import 'package:flutter/material.dart';
import 'package:login_form/business_logics/credentials_checker.dart';
import 'package:login_form/generated/l10n.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final credentialsChecker = CredentialsChecker();
  
  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
        
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: 250.0,
                child: TextField(
                  controller: loginController,
			      decoration: InputDecoration(
				    hintText: AppLocalizations.of(context).login,
				    fillColor: Theme.of(context).primaryColor,
				    filled: true,
				    prefixIcon: const Icon(
                        Icons.account_box,
                        size: 28.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).focusColor),
                    ),
                    contentPadding: const EdgeInsets.all(20.0),
                  ),
                  style: TextStyle(color: Theme.of(context).hintColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: 250.0,
                child: TextField(
                  controller: passwordController,
			      decoration: InputDecoration(
				    hintText: AppLocalizations.of(context).password,
				    fillColor: Theme.of(context).primaryColor,
				    filled: true,
				    prefixIcon: const Icon(
                        Icons.password_sharp,
                        size: 28.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).focusColor),
                    ),
                    contentPadding: const EdgeInsets.all(20.0),
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  style: TextStyle(color: Theme.of(context).hintColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: 250.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: prnt,
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: Text(
                    AppLocalizations.of(context).signIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  void prnt() {
    print(loginController.text);
    print(passwordController.text);
	
    if (credentialsChecker.check(loginController.text, passwordController.text)) {
      Navigator.pushReplacementNamed(context, '/success');
    }
  }
}