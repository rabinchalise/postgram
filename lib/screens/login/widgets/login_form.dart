import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_finder/bottom_navigation_bar.dart';
import 'package:job_finder/screens/password/forget_password_screen.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const TextField(
                cursorColor: kDarkerColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  label: Text('Email'),
                )),
            16.0.verticalSpacer,
            const TextField(
                cursorColor: kDarkerColor,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  label: Text('Password'),
                )),
            16.0.verticalSpacer,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      Flexible(
                          child: Checkbox(
                              activeColor: kPrimaryColor,
                              side: const BorderSide(
                                  width: 1, color: Colors.black54),
                              value: false,
                              onChanged: (value) {})),
                      const Flexible(
                        flex: 2,
                        child: Text(
                          'Remember Me',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordScreen()));
                    },
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(color: kPrimaryColor, fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
            20.0.verticalSpacer,
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavigationMenu()));
                    },
                    child: const Text('Log In'))),
          ],
        ),
      ),
    );
  }
}
