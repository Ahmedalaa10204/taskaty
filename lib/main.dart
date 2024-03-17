import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskaty/core/services/local_storage.dart';
import 'package:taskaty/core/theme/app_theme.dart';
import 'package:taskaty/features/add-task/data/task_model.dart';
import 'package:taskaty/features/splash_view.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<TaskModel>(TaskModelAdapter());
  await Hive.openBox<TaskModel>('task');
  await Hive.openBox('user');
  AppLocalStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appLightTheme,
      darkTheme: appDarkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home:  SplashView(),
    );
  }
}