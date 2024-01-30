import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository {

  Future<List<VideoPost>> getFavoriteVideoByPage(int userID);

  Future<List<VideoPost>> getTrendingVideoByPage(int page);
  
}