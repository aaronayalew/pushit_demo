import 'package:flutter/material.dart';
import 'package:pushit_demo/repo/video_repo.dart';
import 'package:pushit_demo/views/widgets/videoitem.dart';
import 'package:provider/provider.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  VideoRepo videoRepo = VideoRepo();
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);
  @override
  void initState() {
    _pageController.addListener(_scrollListener);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<VideoRepo>().fetchVideos();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            title: const Text(
              "Videos",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(6.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(
                  context.watch<VideoRepo>().isLoading
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                ),
              ),
            )),
        body: context.watch<VideoRepo>().videos != []
            ? Scrollbar(
                controller: _pageController,
                interactive: true,
                thumbVisibility: true,
                thickness: 10,
                child: PageView.builder(
                  allowImplicitScrolling: true,
                  scrollDirection: Axis.vertical,
                  controller: _pageController,
                  itemCount: context.watch<VideoRepo>().videos.length,
                  itemBuilder: (context, index) {
                    return VideoItem(
                      video: context.watch<VideoRepo>().videos[index],
                    );
                  },
                ),
              )
            : const SizedBox.shrink());
  }

  void _scrollListener() {}
}
