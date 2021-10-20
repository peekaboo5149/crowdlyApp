import 'package:flutter/material.dart';
import 'package:crowdly/composition_root.dart';
import 'package:crowdly/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CompositionRoot.configure();
  final firstPage = CompositionRoot.start();
  runApp(MyApp(firstPage));
}

class MyApp extends StatelessWidget {
  final Widget firstPage;

  MyApp(this.firstPage);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crowdly',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      home: firstPage,
    );
  }
}
