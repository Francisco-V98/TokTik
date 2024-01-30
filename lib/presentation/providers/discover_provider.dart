import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepository;

  bool inicialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videosRepository
  });

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts.map((video) {
    //   return LocalVideoModel.fromJson(video).toVideoPostEntity();
    // }).toList();

    final newVideos = await videosRepository.getTrendingVideoByPage(1);

    videos.addAll(newVideos);
    inicialLoading = false;
    notifyListeners();
  }
}
