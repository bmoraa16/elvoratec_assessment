import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prueba_elvoratec/app.dart';
import 'package:prueba_elvoratec/core/di/injection.dart';
import 'package:prueba_elvoratec/core/managers/secure_storage_manager.dart';
import 'package:prueba_elvoratec/core/managers/shared_preferences_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  SharedPreferencesManager();
  SecureStorageManager();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const TestApp());
}