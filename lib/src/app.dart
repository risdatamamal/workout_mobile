import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:workout_management_class/src/pages/pages.dart';
import 'package:workout_management_class/src/settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  // case SettingsView.routeName:
                  //   return SettingsView(controller: settingsController);
                  // case SampleItemDetailsView.routeName:
                  //   return const SampleItemDetailsView();
                  // case SampleItemListView.routeName:
                  default:
                    return SplashPage(
                        title: 'Test',
                        subtitle: 'Test',
                        icon: 'assets/images/logo.png',
                        subImage: 'assets/images/splash-logo-1.png',
                        buttonTitle1: 'GET STARTED',
                        buttonTap1: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomerLoginPage()),
                          );
                        });
                }
              },
            );
          },
        );
      },
    );
  }
}
