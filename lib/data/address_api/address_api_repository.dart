import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'package:riverpod/riverpod.dart';

// 페이지 나갈 때 자동으로 없어지게!
final addressApiRepository = Provider.autoDispose<AddressApiRepository>((ref) => AddressApiRepository());

class AddressApiRepository {
  final apiKey = "CE2A3783-ED39-3D39-927A-FA95735D05A1";
  final Client _client = Client();

  Future<List<String>> findByGeo() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    final url = "http://api.vworld.kr/req/data?service=data&request=GetFeature&data=LT_C_ADEMD_INFO&key=$apiKey&geomfilter=point(${position.longitude} ${position.latitude})";
    final response = await _client.get(Uri.parse(url));
    final json = jsonDecode(response.body);
    if (json["response"]["status"] == "OK") {
      return (json["response"]["result"]["featureCollection"]["features"] as List).map((e) => e["properties"]["full_nm"].toString()).toList();
    } else {
      return [];
    }
  }

  Future<List<String>> findByName({required String location}) async {
    final url = "http://api.vworld.kr/req/search?key=$apiKey&request=search&category=L4&type=district&size=1000&query=$location";
    final response = await _client.get(Uri.parse(url));
    final json = jsonDecode(response.body);
    if (json["response"]["status"] == "OK") {
      return (json["response"]["result"]["items"] as List).map((e) => e["title"].toString()).toList();
    } else {
      return [];
    }
  }
}
