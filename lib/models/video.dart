class Video {
  int clipId = 0;
  String clipURL = "";
  String clipName = "";

  Video({required this.clipId, required this.clipName, required this.clipURL});

  Video.fromJSON(Map<String, dynamic> json) {
    clipId = json['clipId'];
    clipURL = json['clipURL'];
    clipName = json['clipName'];
  }

  Map<String, dynamic> toJSON() {
    Map<String, dynamic> json = Map<String, dynamic>();
    json['clipId'] = clipId;
    json['clipURL'] = clipURL;
    json['clipName'] = clipName;
    return json;
  }
}
