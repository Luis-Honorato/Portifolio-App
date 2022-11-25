import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/posts/data/datasource/post_remote_data_source.dart';
import 'package:todo_list/features/posts/data/repository/post_repository.dart';
import 'package:todo_list/features/posts/domain/usecase/get_posts_usecase.dart';
import 'package:todo_list/features/posts/presentation/bloc/posts_bloc.dart';
import 'package:todo_list/features/posts/presentation/pages/posts_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Post App',
      theme: ThemeData.dark(),
      home: BlocProvider(
        create: (context) => PostsBloc(
          usecase: GetPosts(
            repository: PostRepository(
              dataSource: PostRemoteDataSource(
                client: Dio(),
              ),
            ),
          ),
        )..add(FetchPostsEvent()),
        child: const PostPAge(),
      ),
    );
  }
}
