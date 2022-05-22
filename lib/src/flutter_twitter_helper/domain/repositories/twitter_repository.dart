import 'package:dartz/dartz.dart';

import '../entities/tweet.dart';
import '../failures/twitter_failure.dart';

abstract class TwitterRepository {
  Future<Either<TwitterFailure, Tweet>> fetchTweetData(String id);
}
