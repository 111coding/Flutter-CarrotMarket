class ProductCategory {
  final int id;
  final String category;
  // final String imgSrc; // 필요한 경우 주석 해제

  // 생성자
  const ProductCategory({
    required this.id,
    required this.category,
    // required this.imgSrc, // 필요한 경우 주석 해제
  });

  // JSON에서 ProductCategory 객체 생성
  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      id: json['id'],
      category: json['category'],
      // imgSrc: json['imgSrc'], // 필요한 경우 주석 해제
    );
  }

  // ProductCategory 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      // 'imgSrc': imgSrc, // 필요한 경우 주석 해제
    };
  }
}
