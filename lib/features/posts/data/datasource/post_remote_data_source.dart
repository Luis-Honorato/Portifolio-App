// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class PostRemoteDataSource {
  final Dio client;
  PostRemoteDataSource({
    required this.client,
  });

  Future<Response> getPosts() async {
    final response = await client.get(
      'https://jsonplaceholder.typicode.com/posts',
    );
    return response;
  }
}
