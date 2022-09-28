import 'dart:convert';

import 'package:flutter_carrotmarket/data/file/model/file_model.dart';
import 'package:flutter_carrotmarket/data/http_provider.dart';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:riverpod/riverpod.dart';

final fileRepository = Provider<FileRepository>((ref) => FileRepository());

class FileRepository {
  final _endPoint = "/api/file";

  Future<FileModel?> upload({required String filePath}) async {
    var request = MultipartRequest("POST", Uri.parse("${HttpConnector.host}$_endPoint/upload"));

    request.files.add(
      await MultipartFile.fromPath(
        'file',
        filePath,
        contentType: MediaType('application', 'x-tar'),
      ),
    );
    var response = await request.send();
    final responseString = await response.stream.bytesToString();

    if (response.statusCode == 200) {
      return FileModel.fromJson(jsonDecode(responseString)["content"]);
    }
    return null;
  }
}
