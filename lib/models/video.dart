//Model for videos.
class Video {
  int clipId = 0;
  String clipURL = "";
  String clipName = "";
  String clipThumb = "";

  Video(
      {required this.clipId,
      required this.clipName,
      required this.clipURL,
      required this.clipThumb});

  Video.fromJSON(Map<String, dynamic> json) {
    clipId = json['clipId'];
    clipURL = json['clipURL'];
    clipName = json['clipName'];
    clipThumb = json['clipThumb'];
  }

  Map<String, dynamic> toJSON() {
    Map<String, dynamic> json = <String, dynamic>{};
    json['clipId'] = clipId;
    json['clipURL'] = clipURL;
    json['clipName'] = clipName;
    json['clipThumb'] = clipThumb;
    return json;
  }
}
