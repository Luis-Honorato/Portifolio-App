import 'package:flutter/material.dart';
import 'package:todo_list/features/posts/presentation/widgets/feed_posts.dart';

class PostPAge extends StatelessWidget {
  const PostPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade400,
        centerTitle: true,
        title: const Text('Posts'),
      ),
      body: const Center(child: FeedPosts()),
    );
  }
}
