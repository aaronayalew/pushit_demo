import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class VideosPage extends StatefulWidget {
  VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Videos")), body: Container());
  }
}
