import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:single_clock_proj/constants/routes.dart';

import '../utilities/show_error_dialog.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  // statefulWidget -> init state
  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  // statefulWidget -> dispose
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            obscureText: false,
            enableSuggestions: false,
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'Enter your email here'),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(hintText: 'Enter your password here'),
          ),
          TextButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              try {
                final userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                  password: password,
                );
                final user = FirebaseAuth.instance.currentUser;
                if (user?.emailVerified == true) {
                  Navigator.of(context).pushNamedAndRemoveUntil(homeRoute, (route) => false);
                } else {
                  Navigator.of(context).pushNamedAndRemoveUntil(verifyEmailRoute, (route) => false);
                }
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  await showErrorDialog(context, "User not found");
                } else if (e.code == 'wrong-password') {
                  await showErrorDialog(context, "Wrong password");
                } else {
                  await showErrorDialog(context, "Error: ${e.code}");
                }
              } catch (e) {
                await showErrorDialog(context, "Error - ${e.toString()}");
              }
            },
            child: const Text("Login"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                registerRoute,
                (route) => false,
              );
            },
            child: const Text("Register here!"),
          )
        ],
      ),
    );
  }
}
