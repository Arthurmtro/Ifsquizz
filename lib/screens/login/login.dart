import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ifsquizz/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo(size: 150),
            Flexible(
                child: LoginButton(
              icon: FontAwesomeIcons.userNinja,
              text: "Continuer en invité",
              loginMethod: AuthService().anonLogin,
              color: Colors.deepPurple,
            )),
            LoginButton(
              icon: FontAwesomeIcons.google,
              text: "Connexion avec Google",
              loginMethod: AuthService().googleLogin,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.text,
    required this.color,
    required this.icon,
    required this.loginMethod,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: ElevatedButton.icon(
          icon: Icon(size: 20, color: Colors.white, icon),
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(24), backgroundColor: color),
          onPressed: () => loginMethod(),
          label: Text(text, style: const TextStyle(color: Colors.white)),
        ));
  }
}
