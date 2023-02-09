import 'package:flutter/material.dart';

import 'views/search_view.dart';

void main() {
  runApp(const SearchFilterApp());
}

class SearchFilterApp extends StatelessWidget {
  const SearchFilterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SearchView(),
      title: 'SearchFilterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
        // brightness: Brightness.dark,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
    );
  }
}
