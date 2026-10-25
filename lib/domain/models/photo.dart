class Photo {
  final int photoId;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({
    required this.photoId,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      photoId: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }

  factory Photo.fromMap(Map<String, Object?> map){
    return Photo(
        photoId: map['photo_id'] as int,
        title: map['title'] as String,
        url: map['url'] as String,
        thumbnailUrl: map['thumbnail_url'] as String
    );
  }

  Map<String, Object> toMap() {
    return {
      'photo_id': photoId,
      'title': title,
      'url': url,
      'thumbnail_url': thumbnailUrl,
    };
  }


}
