import 'package:flutter/material.dart';
import 'package:provider_example_flutter_app/screens/provider_sample.dart';
import 'package:provider_example_flutter_app/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: MyProviderST(),
    );
  }
}