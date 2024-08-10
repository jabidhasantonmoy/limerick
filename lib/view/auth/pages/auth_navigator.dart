import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../controller/components/utils/media_size.dart';
import '../../../controller/repositories/auth_api_helper.dart';
import 'home_page.dart';
import 'login_page.dart';

class AuthNavigator extends StatefulWidget {
  static const routeName = '/authNavigator';
  const AuthNavigator({super.key});

  @override
  State<AuthNavigator> createState() => _AuthNavigatorState();
}

class _AuthNavigatorState extends State<AuthNavigator> {
  AuthApiHelper authApiHelper = AuthApiHelper();
  bool calledOnce = false;

  @override
  void didChangeDependencies() {
    if (!calledOnce) {
      calledOnce = true;
      // myProfileCubit = context.watch<MyProfileCubit>();
      Future.delayed(const Duration(milliseconds: 500), () {})
          .whenComplete(() => navigateAuth());
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: mediaHeight,
        width: mediaWidth,
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(
                'Loading',
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 120),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 900),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ),
    );
  }

  void navigateAuth() async {
    String? tempAccessToken;
    if (sharedPrefsInstance.containsKey(tokenKey)) {
      tempAccessToken = sharedPrefsInstance.getString(tokenKey);
      if (tempAccessToken != null && tempAccessToken.isNotEmpty) {
        Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      } else {
        Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
      }
    } else {
      Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
    }
  }
}
