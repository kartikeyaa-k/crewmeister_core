import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

SystemUiOverlayStyle get darkStatusAndNavigationBar => SystemUiOverlayStyle(
  statusBarBrightness: Brightness.light,
  statusBarColor: Colors.grey.shade900,
  statusBarIconBrightness: Brightness.light,
  systemNavigationBarColor: const Color(0xFF121212),
  systemNavigationBarDividerColor: const Color(0xFF121212),
  systemNavigationBarIconBrightness: Brightness.dark,
);

SystemUiOverlayStyle get lightStatusAndNavigationBar =>
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
