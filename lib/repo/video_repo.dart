import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:pushit_demo/models/video.dart';

//A class to handle fetching data from the API
class VideoRepo with ChangeNotifier, DiagnosticableTreeMixin {
  List<Video> _videos = [];
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  List<Video> get videos => _videos;
  String url = 'https://www.myactionreplay.com/api/clips';
  Future<void> fetchVideos() async {
    _isLoading = true;
    notifyListeners();
    Response resp = await post(Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: jsonEncode({
          'marAuth': '5344333591ebe3c10594e1abf146b309',
          'limit': '100',
          'sessionID': '389482'
        }));
    List<Video> vids = [];
    if (resp.statusCode == 200) {
      //Iterate through all clips, Using the factory serialize the data.
      jsonDecode(resp.body)['clips']
          .forEach((v) => vids.add(Video.fromJSON(v)));
    } else {
      if (kDebugMode) {
        ("!!!!!! ERROR: ${resp.statusCode}, Response: ${resp.body}");
      }
    }
    _videos = vids;
    _isLoading = false;
    notifyListeners();
  }
}
