import 'package:flutter/material.dart';
import 'package:job_finder/common/back_arrow.dart';
import 'package:job_finder/common/primary_header.dart';
import 'package:job_finder/utils/extension.dart';

import 'reset_password_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackArrow(),
              32.0.verticalSpacer,
              const PrimaryHeader(
                  title: 'Forget Password',
                  subTitle:
                      'Don\'t worry sometimes people can forget too, enter your enail and we will send you a password reset link.'),
              32.0.verticalSpacer,
              const Form(
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      label: Text('Email'),
                    )),
              ),
              32.0.verticalSpacer,
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ResetPasswordScreen()));
                      },
                      child: const Text('Send')))
            ],
          ),
        ),
      ),
    );
  }
}
