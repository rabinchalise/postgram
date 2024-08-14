import 'package:flutter/material.dart';
import 'package:job_finder/common/back_arrow.dart';
import 'package:job_finder/common/form_divider.dart';
import 'package:job_finder/common/social_button.dart';
import 'package:job_finder/screens/login/widgets/login_form.dart';
import 'package:job_finder/screens/register/register_screen.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';
import '../../common/custom_appbar.dart';
import '../../common/primary_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          leading: BackArrow(),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PrimaryHeader(
                  title: 'Login Now',
                  subTitle:
                      'Login to explore different jobs avialable\naccording to current needs.',
                ),
                24.0.verticalSpacer,
                const LoginForm(),
                32.0.verticalSpacer,
                const FormDivider(),
                32.0.verticalSpacer,
                const SocialButton(),
                32.0.verticalSpacer,
                Center(
                  child: Wrap(
                    children: [
                      const Text(
                        'Don\'t Have An Account?',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      6.0.horizontalSpacer,
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: kPrimaryColor),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
