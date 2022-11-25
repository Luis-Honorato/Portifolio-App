import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/posts/presentation/bloc/posts_bloc.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              for (final post in state.post!.posts)
                ListTile(
                  title: Text(post!.title),
                  subtitle: Text(
                    post.body,
                    maxLines: 4,
                  ),
                ),
              const Divider(),
            ],
          ),
        );
      },
    );
  }
}
