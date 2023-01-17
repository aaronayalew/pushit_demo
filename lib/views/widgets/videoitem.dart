import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pushit_demo/repo/video_repo.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../models/video.dart';

class VideoItem extends StatefulWidget {
  final Video video;
  const VideoItem({super.key, required this.video});

  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  late CachedVideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CachedVideoPlayerController.network(widget.video.clipURL,
        videoPlayerOptions: VideoPlayerOptions(
            mixWithOthers:
                true)); // Option has to be like this inorder to avoid random stops.
    _controller.initialize().then((value) => setState((() {
          _controller.play();
        })));
    _controller.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: _controller.value.isInitialized
            ? RotatedBox(
                quarterTurns: context.watch<VideoRepo>().isFullScreen ? 1 : 0,
                child: VisibilityDetector(
                  key: Key('vid_${widget.video.clipId}'),
                  onVisibilityChanged: _handleVisibility,
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: GestureDetector(
                      onDoubleTap: () {
                        context.read<VideoRepo>().toggleFullScreen();
                      },
                      child: Stack(children: [
                        CachedVideoPlayer(_controller),
                        _ControlsOverlay(
                          controller: _controller,
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: VideoProgressIndicator(_controller,
                                allowScrubbing: true))
                      ]),
                    ),
                  ),
                ),
              )
            : const Center(child: CircularProgressIndicator.adaptive()));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Pause video when it's not showing and automatically start playing when it's showing again
  void _handleVisibility(VisibilityInfo info) {
    if (info.visibleFraction == 0) {
      if (_controller.value.isInitialized) {
        _controller.pause().then((value) {});
      }
    } else {
      _controller.play().then((value) {});
    }
  }
}

class _ControlsOverlay extends StatefulWidget {
  const _ControlsOverlay({Key? key, required this.controller})
      : super(key: key);

  final CachedVideoPlayerController controller;

  @override
  State<_ControlsOverlay> createState() => _ControlsOverlayState();
}

class _ControlsOverlayState extends State<_ControlsOverlay> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: widget.controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            widget.controller.value.isPlaying
                ? widget.controller.pause()
                : widget.controller.play();
            setState(() {});
          },
        ),
      ],
    );
  }
}
