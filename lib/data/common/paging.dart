class Paging<T> {
  Paging({
    required this.totalPages,
    required this.offset,
    required this.last,
    required this.content,
  });

  final int totalPages;
  final int offset;
  final bool last;
  final List<T> content;

  Paging<T> copyWith({
    int? totalPages,
    int? offset,
    bool? last,
    List<T>? content,
  }) {
    return Paging<T>(
      totalPages: totalPages ?? this.totalPages,
      offset: offset ?? this.offset,
      last: last ?? this.last,
      content: content ?? this.content,
    );
  }

  /// Example
  ///
  /// return Paging<Board>.fromJson(
  ///
  ///   jsonDecode(response.body),
  ///
  ///   (list) => list.map((e) => Board.fromJson(e as Map<String, dynamic>)).toList(),
  ///
  /// )
  factory Paging.fromJson(
    Map<String, dynamic> json,
    List<T> Function(List) contentBuilder,
  ) {
    final content = json["content"];
    return Paging(
      totalPages: content["totalPages"],
      offset: content["pageable"]["offset"],
      last: content["last"],
      content: contentBuilder.call(content["content"] as List),
    );
  }
}
