import 'package:riverpod/riverpod.dart';

final productWriteTypeProvider = Provider((ref) => ProductWriteTypeProvider());

class ProductWriteTypeProvider {
  ProductWriteType type = ProductWriteType.write;
  void write() => type = ProductWriteType.write;
  void edit() => type = ProductWriteType.edit;
}

enum ProductWriteType {
  edit("글수정"),
  write("글쓰기");

  final String text;
  const ProductWriteType(this.text);
}
