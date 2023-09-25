import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

import '../tab/tab_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SignInScreen(
              providerConfigs: const [
                EmailProviderConfiguration(),
              ],

              headerBuilder: (context, constraints, _) {
                return DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.deepPurpleAccent,
                  ),
                  child : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height:70),
                    Image.asset(
                      'assets/images/logo.png',
                      scale: 1,
                    ),
                    const SizedBox(width:10),
                    const Text('Indragram',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 25),
                    ),
                  ],
                ));
              },

          );
        }

        return const TabPage();
      },
    );
  }
}