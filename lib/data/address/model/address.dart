class Address {
  final int id;
  final String fullName;
  final String displayName;
  final bool? defaultYn; // 선택적 필드

  // 생성자
  const Address({
    required this.id,
    required this.fullName,
    required this.displayName,
    this.defaultYn,
  });

  // JSON에서 Address 객체 생성
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'],
      fullName: json['fullName'],
      displayName: json['displayName'],
      defaultYn: json['defaultYn'],
    );
  }

  // Address 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'displayName': displayName,
      'defaultYn': defaultYn,
    };
  }
}
