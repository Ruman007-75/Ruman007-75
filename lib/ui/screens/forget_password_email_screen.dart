import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forget_password_otp_screen.dart';
import 'package:task_manager/ui/utils/app_colors.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ForgetPasswordEmailScreen extends StatefulWidget {
  const ForgetPasswordEmailScreen({super.key});

  @override
  State<ForgetPasswordEmailScreen> createState() =>
      _ForgetPasswordEmailScreenState();
}

class _ForgetPasswordEmailScreenState extends State<ForgetPasswordEmailScreen> {
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
                  'Your Email Address',
                  style: textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'A 6 digits verification OTP will be sent to your email address',
                  style: textTheme.titleSmall?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildVerifyEmailForm(),
                const SizedBox(
                  height: 48,
                ),
                Center(
                  child: _buildHaveAccountSection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVerifyEmailForm() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(hintText: 'Email'),
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

  Widget _buildHaveAccountSection() {
    return RichText(
      text: TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
          text: "Have an account? ",
          children: [
            TextSpan(
                text: 'Sign In',
                style: const TextStyle(color: AppColors.themeColor),
                recognizer: TapGestureRecognizer()..onTap = _onTabSignIn)
          ]),
    );
  }

  void _onTabNextButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgetPasswordOtpScreen(),
      ),
    );
  }

  void _onTabSignIn() {
    // Navigate to the SignInScreen
    Navigator.pop(context);
  }
}
