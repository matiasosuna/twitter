import 'dart:convert';

import 'package:dart_twitter_api/twitter_api.dart' as twitter_plugin;
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:twitter/src/flutter_twitter_helper/domain/entities/tweet.dart';
import 'package:twitter/src/flutter_twitter_helper/domain/failures/twitter_failure.dart';
import 'package:twitter/src/flutter_twitter_helper/domain/repositories/twitter_repository.dart';

class RemoteTwitterRepository implements TwitterRepository {
  RemoteTwitterRepository({
    required this.consumerKey,
    required this.consumerSecret,
    required this.token,
    required this.secret,
  });

  final String consumerKey, consumerSecret, token, secret;

  @override
  Future<Either<TwitterFailure, Tweet>> fetchTweetData(String id) async {
    try {
      final apiResult = _buildApi();
      return apiResult.fold(
        (failure) => Left(failure),
        (api) => _fetchTweet(api, id),
      );
    } catch (e) {
      return Left(TwitterFailure.unknown('$e'));
    }
  }

  Either<TwitterFailure, twitter_plugin.TwitterApi> _buildApi() {
    try {
      final api = twitter_plugin.TwitterApi(
        client: twitter_plugin.TwitterClient(
          consumerKey: consumerKey,
          consumerSecret: consumerSecret,
          token: token,
          secret: secret,
        ),
      );
      return Right(api);
    } catch (e) {
      return Left(TwitterFailure.twitterClient('$e'));
    }
  }

  Future<Either<TwitterFailure, Tweet>> _fetchTweet(
    twitter_plugin.TwitterApi api,
    String id,
  ) async {
    try {
      final apiTweet = await api.tweetService.show(id: id);
      final tweet = Tweet(
        data: apiTweet.toJson(),
        apiTweet: apiTweet,
      );
      Clipboard.setData(ClipboardData(text: jsonEncode(apiTweet.toJson())));
      return Right(tweet);
    } catch (e) {
      print('$e');
      return Left(UnknownTwitterFailure(e.toString()));
    }
  }
}
