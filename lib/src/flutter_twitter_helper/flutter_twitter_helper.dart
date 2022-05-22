import 'package:dart_twitter_api/twitter_api.dart' as twitter_api;
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:tweet_ui/models/api/tweet.dart';
import 'package:tweet_ui/models/api/user.dart';
import 'package:tweet_ui/tweet_ui.dart';

import '../core/twitter_helper.dart';
import 'data/mappers/tweet_entities_mapper.dart';
import 'domain/repositories/twitter_repository.dart';

class FlutterTwitterHelper implements TwitterHelper {
  FlutterTwitterHelper({required this.repository});

  final TwitterRepository repository;

  @override
  Widget? buildEmbeddedTweet({
    required twitter_api.Tweet tweet,
    required String id,
  }) {
    final mappedTweet = _buildTweet(tweet);
    return mappedTweet != null
        ? EmbeddedTweetView.fromTweet(mappedTweet)
        : null;
  }

  Tweet? _buildTweet(twitter_api.Tweet? tweet) {
    if (tweet == null) return null;
    final userData = tweet.user;
    final id = double.tryParse(tweet.idStr ?? '') ?? 0.0;
    return Tweet(
      createdAt: _buildTweetDate(tweet),
      id: id,
      idStr: tweet.idStr ?? '',
      text: tweet.fullText ?? '',
      favoriteCount: tweet.favoriteCount ?? 0,
      entities: TweetEntitiesMapper.buildEntities(tweet.entities),
      extendedEntities: TweetEntitiesMapper.buildEntities(
        tweet.extendedEntities,
      ),
      isQuoteStatus: tweet.isQuoteStatus ?? false,
      quotedStatus: _buildTweet(tweet.quotedStatus),
      retweetedStatus: _buildTweet(tweet.retweetedStatus),
      user: User(
        verified: userData?.verified ?? false,
        id: double.tryParse(userData?.idStr ?? '') ?? 0.0,
        name: userData?.name ?? '',
        screenName: userData?.screenName ?? '',
        profileImageUrlHttps: userData?.profileImageUrlHttps,
      ),
    );
  }

  @override
  Future<twitter_api.Tweet?> fetchTweetData(String id) async {
    try {
      final result = await repository.fetchTweetData(id);
      return result.fold(
        (_) => null,
        (tweet) {
          return tweet.apiTweet!;
        },
      );
    } catch (e) {
      return null;
    }
  }

  String _buildTweetDate(twitter_api.Tweet apiTweet) {
    final apiDate = apiTweet.createdAt ?? DateTime.now();
    final date = DateFormat('E MMM d H:m:s +0000 y').format(apiDate);
    return date;
  }
}
