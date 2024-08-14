import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_finder/screens/login/login_screen.dart';
import 'package:job_finder/utils/extension.dart';
import '../../utils/colors.dart';
import '../register/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/sigin.png'))),
              ),
            ),
            20.0.verticalSpacer,
            const Flexible(
              child: FittedBox(
                child: Text(
                  'Experience Job Hunting\nMade Easy',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            20.0.verticalSpacer,
            const Expanded(
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                'You can explore different kind of job and gain experience which will be helpful for your career. ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            const Spacer(),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: const Text('Register'))),
            16.0.verticalSpacer,
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text('Log In'))),
          ],
        ),
      ),
    ));
  }
}
