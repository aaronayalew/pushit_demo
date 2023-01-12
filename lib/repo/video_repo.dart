import 'package:flutter/material.dart';
import 'package:pushit_demo/models/video.dart';

class VideoRepo with ChangeNotifier {
  List<Video> videos = [
    Video(
      clipId: 1,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 2,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 3,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 4,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 5,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 6,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 7,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 8,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 9,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 10,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 11,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 12,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 13,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 14,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 15,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 16,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 17,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 18,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 19,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 20,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 21,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 22,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 23,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 24,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 25,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
    Video(
      clipId: 26,
      clipName: "test",
      clipURL:
          "https://content.myactionreplay.com/replay207601.00348.1672942674.mp4",
      clipThumb:
          "http://content.myactionreplay.com/replay207601.00348.1672942674.mp4.jpg",
    ),
  ];

  List<Video> fetchVideos() {
    return videos;
  }
}
