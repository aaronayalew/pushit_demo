import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CachedVideoPlayerController.network(
      widget.video.clipURL,
    );
    _controller.initialize().then((value) => setState((() {
          _controller.play();
        })));
    _controller.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: _controller.value.isInitialized
            ? VisibilityDetector(
                key: Key('vid_${widget.video.clipId}'),
                onVisibilityChanged: _handleVisibility,
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(children: [
                    CachedVideoPlayer(_controller),
                    _ControlsOverlay(controller: _controller),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: VideoProgressIndicator(_controller,
                            allowScrubbing: true))
                  ]),
                ),
              )
            : const Center(child: CircularProgressIndicator.adaptive()));
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   if (kDebugMode) {
  //     print("============= Widget Visisble ====================");
  //   }
  //   setState(() {
  //     _controller.play();
  //   });
  // }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleVisibility(VisibilityInfo info) {
    print(
        "============= Widget Visisble ==================== ${info.visibleFraction.toString()}");

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
