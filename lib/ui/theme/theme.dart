
import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  useMaterial3: true,
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     backgroundColor: Colors.cyan
  //   ),
  // ),
  iconTheme: const IconThemeData(
    size: 50,
    color: Colors.white
  ),
  appBarTheme: const AppBarTheme(
    toolbarHeight: 100,
    backgroundColor: Colors.white12
  ),
  colorScheme: const ColorScheme.dark(
    onPrimaryContainer: Colors.black87,
    primary: Colors.cyan
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 30
    ),
    titleMedium: TextStyle(
        fontSize: 20
    ),
    titleSmall: TextStyle(
      fontSize: 16
    )
  )
);