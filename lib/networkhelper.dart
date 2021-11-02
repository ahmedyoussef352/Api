import 'package:dio/dio.dart';

class Networkhelper {
  Future<List<dynamic>> getcomments() async {
    final Response response =
        await Dio().get('https://jsonplaceholder.typicode.com/comments');
    return response.data;
  }
}
