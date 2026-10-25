import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/models/photo.dart';

Future<List<Photo>> fetchPhotos() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/photos'),
    headers: {'Accept': 'application/json'},
  );

  if (response.statusCode == 200) {
    //Nếu đúng mã trả về thành công (200) thì sẽ chuyển dữ json về object
    final jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList.map((item) {
      return Photo.fromJson(item as Map<String, dynamic>);
    }).toList();
  } else {
    //sai ném ra lỗi cùng với mã lỗi
    throw Exception('Failed to load photo: HTTP ${response.statusCode}');
  }
}
