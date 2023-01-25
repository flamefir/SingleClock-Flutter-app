import 'package:flutter/material.dart';
import 'package:single_clock_proj/constants/routes.dart';
import 'package:single_clock_proj/services/auth/auth_services.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify email"),
      ),
      body: Column(
        children: [
          const Text("We've sent you an email verifications"),
          const Text("Didn't receive one? Then"),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().sendEmailVerification();
            },
            child: const Text("Send email verification"),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false);
            },
            child: const Text("When verified, go to login"),
          ),
        ],
      ),
    );
  }
}
