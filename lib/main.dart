import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/constants/app/app_constants.dart';
import 'package:fluttermvvmtemplate/core/init/lang/language_manager.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(EasyLocalization(
    child: const MyApp(),
    supportedLocales: LanguageManager.instance.supportedLocales,
    path: ApplicationConstants.LANG_ASSET_PATH,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Text('MVVM'),
    );
  }
}
