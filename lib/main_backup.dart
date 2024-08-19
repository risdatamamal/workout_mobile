import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_management_class/src/settings/settings.dart';
import 'package:workout_management_class/src/services/services.dart';
import 'package:workout_management_class/src/app_backup.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  await dotenv.load(fileName: ".env");

  runApp(MyApp(settingsController: settingsController));
}
