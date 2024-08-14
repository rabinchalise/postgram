import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                CupertinoIcons.clear,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/reset_password.png',
                  width: screenSize.width * 0.6,
                ),
                32.0.verticalSpacer,
                const Text('rabinchalise08@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center),
                32.0.verticalSpacer,
                const Text('Password Reset Email Sent',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center),
                16.0.verticalSpacer,
                const Text(
                    'Your account security is Our Priority? We\'ve sent you a secure link to safely change your password and keep your account protected.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center),
                32.0.verticalSpacer,
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Done'))),
                16.0.verticalSpacer,
                TextButton(
                    style: TextButton.styleFrom(foregroundColor: kPrimaryColor),
                    onPressed: () {},
                    child: const Text(
                      'Resend Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
