import 'package:flutter/material.dart';
import 'package:login_form/business_logics/credentials_checker.dart';
import 'package:login_form/generated/l10n.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _passToggle = true;
  
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final credentialsChecker = CredentialsChecker();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    
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
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 250.0,
                      child: TextFormField(
                        controller: loginController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context).fillLogin;
                          }
                          return null;
                        },
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
                      child: TextFormField(
                        obscureText: _passToggle,
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return AppLocalizations.of(context).fillPassword;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: AppLocalizations.of(context).password,
                          fillColor: Theme.of(context).primaryColor,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.password_sharp,
                            size: 28.0,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                              _passToggle = !_passToggle;
                            });
                          },
                          child: Icon(
                              _passToggle ? Icons.visibility : Icons.visibility_off),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).focusColor),
                          ),
                          contentPadding: const EdgeInsets.all(20.0),
                        ),
                        enableSuggestions: false,
                        autocorrect: false,
                        style: TextStyle(color: Theme.of(context).hintColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 3, 0, 0),
                    child: TextButton(
                    onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context).forgotPassword,
                        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
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
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context).createAccount,
                        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 15),
                      ),
                    )
                  ),
                ]
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
            
    if (_formKey.currentState!.validate() && 
        credentialsChecker.check(loginController.text, passwordController.text)) {
      Navigator.pushReplacementNamed(context, '/success');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).invalidPassword)),
      );
    }
  }
}