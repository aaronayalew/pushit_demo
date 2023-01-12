import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pushit_demo/repo/video_repo.dart';
import 'package:pushit_demo/views/entrance.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => VideoRepo())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pushit Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const EntrancePage(),
    );
  }
}
