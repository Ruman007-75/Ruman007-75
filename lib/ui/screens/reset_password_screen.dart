import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forget_password_otp_screen.dart';
import 'package:task_manager/ui/screens/sign_in_screen.dart';
import 'package:task_manager/ui/utils/app_colors.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class resetPasswordScreen extends StatefulWidget {
  const resetPasswordScreen({super.key});

  @override
  State<resetPasswordScreen> createState() =>
      _resetPasswordScreenState();
}

class _resetPasswordScreenState extends State<resetPasswordScreen> {
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
                  'Set Password',
                  style: textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Minium number of password shuld be 8 letters',
                  style: textTheme.titleSmall?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildResetPasswordForm(),
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

  Widget _buildResetPasswordForm() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(hintText: 'Password'),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: 'Confirm Password'),
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
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        ),
            (_) => false);
  }
}
