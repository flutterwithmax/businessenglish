import 'screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(List<String> args) {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: const TabsScreen(),
        theme: ThemeData(),
      ),
    ),
  );
}
