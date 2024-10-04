import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forget_password_email_screen.dart';
import 'package:task_manager/ui/screens/main_bottom_nav_bar.dart';
import 'package:task_manager/ui/screens/sign_up_screen.dart';
import 'package:task_manager/ui/utils/app_colors.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 84,
                ),
                Text(
                  'Get Started With',
                  style: textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildSignInForm(),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: _onTabForgotPasswordButton,
                        child: const Text(
                          'Forget Password',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      _buildSignUpSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInForm() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(hintText: 'Email'),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: 'Password'),
          obscureText: true, // Secure password input
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
          onPressed: _onTabNextButton,
          child: const Icon(Icons.arrow_circle_right_outlined),
        ),
      ],
    );
  }

  Widget _buildSignUpSection() {
    return RichText(
      text: TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
          text: "Don't have an account? ",
          children: [
            TextSpan(
                text: 'Sign up',
                style: const TextStyle(color: AppColors.themeColor),
                recognizer: TapGestureRecognizer()..onTap = _onTabSignUp)
          ]),
    );
  }

  void _onTabNextButton() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => MainBottomNavBar(),
      ),
      (value) => false,
    );
  }

  void _onTabForgotPasswordButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgetPasswordEmailScreen(),
      ),
    );
  }

  void _onTabSignUp() {
    // Navigate to the SignInScreen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }
}
