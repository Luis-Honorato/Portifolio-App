import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/posts/presentation/bloc/posts_bloc.dart';
import 'package:todo_list/features/posts/presentation/widgets/post_list.dart';

class FeedPosts extends StatelessWidget {
  const FeedPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        switch (state.status) {
          case PostStatus.initial:
            return Container();
          case PostStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case PostStatus.failure:
            return const Center(
              child: Text(('Erro ao Buscar Posts.')),
            );
          case PostStatus.sucesses:
            return const PostList();
        }
      },
    );
  }
}
