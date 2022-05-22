import 'package:dart_twitter_api/api/tweets/data/tweet.dart' as twitter_api;
import 'package:flutter/widgets.dart';

abstract class TwitterHelper {
  Future<twitter_api.Tweet?> fetchTweetData(String id);

  Widget? buildEmbeddedTweet({
    required twitter_api.Tweet tweet,
    required String id,
  });
}
