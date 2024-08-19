import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:workout_management_class/src/pages/pages.dart';
import 'package:workout_management_class/src/cubit/user_cubit.dart';
import 'package:workout_management_class/src/settings/settings.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => UserCubit(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(
            icon: 'assets/images/logo.png',
            subImage: 'assets/images/splash-logo-1.png',
            buttonTitle1: 'GET STARTED',
            buttonTap1: () {
              Get.to(() => CustomerLoginPage());
            }),
      ),
    );
  }
}
