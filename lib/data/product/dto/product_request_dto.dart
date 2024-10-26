class ProductRequestDto {
  final int id;
  final String title;
  final String content;
  final int price;
  final List<int> imageFileIdxList;
  final int addressId; // camelCase로 수정
  final int categoryId; // camelCase로 수정

  // 생성자
  const ProductRequestDto({
    required this.id,
    required this.title,
    required this.content,
    required this.price,
    required this.imageFileIdxList,
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
      imageFileIdxList:
          List<int>.from(json['imageFileIdxList'] ?? []), // List 변환
      addressId: json['addressid'], // JSON 키와 매핑
      categoryId: json['categoryid'], // JSON 키와 매핑
    );
  }

  // ProductRequestDto 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'price': price,
      'imageFileIdxList': imageFileIdxList, // List 변환
      'addressid': addressId, // JSON 키와 매핑
      'categoryid': categoryId, // JSON 키와 매핑
    };
  }
}
