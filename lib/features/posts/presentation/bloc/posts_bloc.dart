import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_list/features/posts/domain/entities/post_entitie.dart';

import '../../domain/usecase/get_posts_usecase.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetPosts usecase;
  PostsBloc({
    required this.usecase,
  }) : super(const PostsState(status: PostStatus.initial)) {
    on<FetchPostsEvent>(
      (event, emit) async {
        emit(PostsState(post: state.post, status: PostStatus.loading));

        await Future.delayed(const Duration(seconds: 2));

        final result = await usecase();

        result.fold((failure) {
          emit(state.copyWith(
            status: PostStatus.failure,
            post: state.post,
          ));
        }, (post) {
          emit(state.copyWith(
            status: PostStatus.sucesses,
            post: post,
          ));
        });
      },
    );
  }
}
