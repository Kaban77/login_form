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
				    fillColor: Colors.white,
				    filled: true,
				    prefixIcon: const Icon(
                        Icons.account_box,
                        size: 28.0,
                    ),
                    contentPadding: const EdgeInsets.all(20.0),
                  ),
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
				    fillColor: Colors.white,
				    filled: true,
				    prefixIcon: const Icon(
                        Icons.password_sharp,
                        size: 28.0,
                    ),
                    contentPadding: const EdgeInsets.all(20.0),
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
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
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: Text(AppLocalizations.of(context).signIn,
                  style: const TextStyle(color: Colors.black)),
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