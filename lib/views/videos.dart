import 'package:flutter/material.dart';
import 'package:pushit_demo/models/video.dart';
import 'package:pushit_demo/repo/video_repo.dart';
import 'package:pushit_demo/views/widgets/videoitem.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class VideosPage extends StatefulWidget {
  VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  VideoRepo videoRepo = VideoRepo();
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);
  int _currentPage = 0;
  bool _isOnPageTurning = false;
  List<Video> videos = [];
  @override
  void initState() {
    _pageController.addListener(_scrollListener);
    videos = videoRepo.fetchVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Videos")),
        body: Scrollbar(
          controller: _pageController,
          interactive: true,
          thumbVisibility: true,
          thickness: 10,
          child: PageView.builder(
            allowImplicitScrolling: true,
            scrollDirection: Axis.vertical,
            controller: _pageController,
            itemCount: videos.length,
            itemBuilder: (context, index) {
              return VideoItem(
                video: videos[index],
              );
            },
          ),
        ));
  }

  void _scrollListener() {}
}
