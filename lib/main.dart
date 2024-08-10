import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:limerick_assignment/view/auth/pages/auth_navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/components/app_route/app_route.dart';
import 'controller/components/app_theme/app_theme.dart';
import 'controller/components/bloc/product_cubit/product_cubit.dart';
import 'controller/components/utils/media_size.dart';
import 'controller/repositories/auth_api_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefsInstance = await SharedPreferences.getInstance();

  if (sharedPrefsInstance.containsKey(tokenKey)) {
  } else {
    sharedPrefsInstance.setString(tokenKey, '');
  }

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mediaHeight = MediaQuery.of(context).size.height;
    mediaWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Demo Project',
      theme: AppTheme.lightMode,
      debugShowCheckedModeBanner: false,
      initialRoute: AuthNavigator.routeName,
      onGenerateRoute: AppRoute.onGenerate,
    );
  }
}
