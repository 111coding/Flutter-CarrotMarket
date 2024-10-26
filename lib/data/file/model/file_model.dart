

class FileModel {
  final int id;
  final String url;
  final String originName;
  final String contentType;
  final DateTime createdAt;

  // 생성자
  const FileModel({
    required this.id,
    required this.url,
    required this.originName,
    required this.contentType,
    required this.createdAt,
  });

  // JSON에서 FileModel 객체 생성
  factory FileModel.fromJson(Map<String, dynamic> json) {
    return FileModel(
      id: json['id'],
      url: json['url'],
      originName: json['originName'],
      contentType: json['contentType'],
      createdAt: DateTime.parse(json['createdAt']), // DateTime 변환
    );
  }

  // FileModel 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'originName': originName,
      'contentType': contentType,
      'createdAt': createdAt.toIso8601String(), // DateTime을 ISO 8601 형식으로 변환
    };
  }
}
