import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../features/auth/controller/auth_controller.dart';
import '../../theme/pallete.dart';

class SignInButton extends ConsumerWidget {
  final bool isFromLogin;

  const SignInButton({
    super.key,
    this.isFromLogin = true,
  });

  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider.notifier).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
        onPressed: () => signInWithGoogle(context, ref),
        icon: Lottie.asset(
          'assets/animations/google.json',
          width: 55.0,
        ),
        label: const Text(
          'Continue with Google',
          style: TextStyle(
            fontSize: 18.0,
            letterSpacing: 0.5,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.greyColor,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
