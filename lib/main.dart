import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_clean/src/core/util/constants.dart';

import 'src/config/routes/app_routes.dart';
import 'src/config/themes/app_theme.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kMaterialAppTitle,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      theme: AppTheme.light,
    );
  }
}
