import 'package:dart_twitter_api/api/tweets/data/tweet.dart' as twitter_api;

class Tweet {
  Tweet({
    required this.data,
    this.apiTweet,
  });

  final Map<String, dynamic> data;
  final twitter_api.Tweet? apiTweet;
}
