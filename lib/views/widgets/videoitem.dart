import 'package:flutter/material.dart';

class VideoItem extends StatefulWidget {
  final String clipURL;
  final String clipName;
  const VideoItem({super.key, required this.clipURL, required this.clipName});

  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
