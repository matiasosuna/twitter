import 'package:dartz/dartz.dart';

import '../../domain/entities/tweet.dart';
import '../../domain/failures/twitter_failure.dart';
import '../../domain/repositories/twitter_repository.dart';
import '../json/tweet_example.dart';

class MockTwitterRepository implements TwitterRepository {
  @override
  Future<Either<TwitterFailure, Tweet>> fetchTweetData(String id) async {
    return Right(Tweet(
      data: TweetExample.data,
    ));
  }
}
