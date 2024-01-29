import 'package:toktik/domain/entities/video_post.dart';

abstract class VIdeoPostRepository {

  Future<List<VideoPost>> getFavoriteVideoByPage(int userID);

  Future<List<VideoPost>> getTrendingVideoByPage(int page);
  
}