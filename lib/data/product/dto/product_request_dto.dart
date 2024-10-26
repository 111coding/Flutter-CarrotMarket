class ProductRequestDto {
  final int id;
  final String title;
  final String content;
  final int price;
  final List<int> imageFileIdList;
  final int addressId; // camelCase로 수정
  final int categoryId; // camelCase로 수정

  // 생성자
  const ProductRequestDto({
    required this.id,
    required this.title,
    required this.content,
    required this.price,
    required this.imageFileIdList,
    required this.addressId,
    required this.categoryId,
  });

  // JSON에서 ProductRequestDto 객체 생성
  factory ProductRequestDto.fromJson(Map<String, dynamic> json) {
    return ProductRequestDto(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      price: json['price'],
      imageFileIdList:
          List<int>.from(json['imageFileIdList'] ?? []), // List 변환
      addressId: json['addressId'], // JSON 키와 매핑
      categoryId: json['categoryId'], // JSON 키와 매핑
    );
  }

  // ProductRequestDto 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'price': price,
      'imageFileIdList': imageFileIdList, // List 변환
      'addressId': addressId, // JSON 키와 매핑
      'categoryId': categoryId, // JSON 키와 매핑
    };
  }
}
