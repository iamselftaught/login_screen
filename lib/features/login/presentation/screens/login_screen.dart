import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lms_dark_001/core/common/widgets/custom_button.dart';
import 'package:lms_dark_001/core/common/widgets/custom_form_field.dart';
import 'package:lms_dark_001/core/theme/app_palette.dart';
import 'package:lms_dark_001/features/login/presentation/widgets/social_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool showPassword = true;

  IconData passwordIcon({bool showPassword = false}) =>
      showPassword ? Icons.visibility_off_outlined : Icons.visibility_rounded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100.0,
              ),

              Image.asset(
                'assets/images/reading-book.png',
                height: 100,
                fit: BoxFit.cover,
              ),

              const SizedBox(
                height: 30.0,
              ),

              // welcome text
              const Text(
                "Welcome Back",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    color: Colors.white),
              ),
              const Text("Login to continue by enter your account info",
                  style: TextStyle(color: Colors.white70)),
            
              const SizedBox(
                height: 30.0,
              ),

              /// login form
              loginForm(context),

              const SizedBox(
                height: 30,
              ),

              RichText(
                text: TextSpan(
                  text: 'Or ',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                  children: const [
                    TextSpan(
                      text: 'Continue with social account',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),


              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialIcons(
                    asset: 'assets/images/twitter.png',
                  ),
                  SocialIcons(
                    asset: 'assets/images/facebook.png',
                  ),
                  SocialIcons(
                    asset: 'assets/images/google.png',
                  )
                ],
              ),

              const SizedBox(
                height: 100,
              ),

              GestureDetector(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 15),
                    children: const [
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: AppPalette.primaryBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Form loginForm(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomFormField(
            prefixIcon: Icons.person_2_outlined,
            hintText: "Username",
            controller: usernameController,
            labelText: "Username"),
        const SizedBox(
          height: 15.0,
        ),
        CustomFormField(
            onTap: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            maxLines: 0,
            prefixIcon: Icons.lock_outline_rounded,
            suffixIcon: passwordIcon(showPassword: showPassword),
            isObscureText: showPassword,
            hintText: "Password",
            controller: passwordController,
            labelText: "Password"),
        const SizedBox(
          height: 15,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              "Forgot Passwaord?",
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 15),
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        CustomButton(
          buttonText: "Login to account",
          onPressed: () {},
        )
      ],
    ));
  }
}
