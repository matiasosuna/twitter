import 'package:dart_twitter_api/twitter_api.dart' as twitter_api;
import 'package:tweet_ui/models/api/entieties/hashtag_entity.dart';
import 'package:tweet_ui/models/api/entieties/media_entity.dart';
import 'package:tweet_ui/models/api/entieties/mention_entity.dart';
import 'package:tweet_ui/models/api/entieties/symbol_entity.dart';
import 'package:tweet_ui/models/api/entieties/tweet_entities.dart';
import 'package:tweet_ui/models/api/entieties/url_entity.dart';

mixin TweetEntitiesMapper {
  static TweetEntities buildEntities(twitter_api.Entities? tweetEntities) {
    if (tweetEntities == null) return const TweetEntities.empty();
    return TweetEntities(
      hashtags: _buildHashtagsEntities(tweetEntities) ?? [],
      symbols: _buildSymbolsEntities(tweetEntities) ?? [],
      userMentions: _buildMentionEntities(tweetEntities) ?? [],
      urls: _buildUrlEntities(tweetEntities) ?? [],
      media: _buildMediaEntities(tweetEntities) ?? [],
    );
  }

  static List<MediaEntity>? _buildMediaEntities(
    twitter_api.Entities tweetEntities,
  ) {
    return tweetEntities.media
        ?.map(
          (e) => MediaEntity(
            id: double.tryParse(e.idStr ?? '') ?? 0.0,
            mediaUrlHttps: e.mediaUrlHttps ?? '',
            url: e.url,
            displayUrl: e.displayUrl,
            expandedUrl: e.expandedUrl,
            type: e.type ?? '',
            indices: e.indices ?? [0, 1],
            videoInfo: e.videoInfo != null
                ? VideoInfo(
                    aspectRatio: e.videoInfo!.aspectRatio ?? [16, 9],
                    variants: e.videoInfo!.variants!
                        .map((e) => Variant(
                            bitrate: e.bitrate ?? 2176000,
                            contentType: e.contentType!,
                            url: e.url!))
                        .toList(),
                  )
                : null,
            sizes: e.sizes != null
                ? Sizes(
                    large: Size(
                      w: e.sizes!.large?.w ?? 1280,
                      h: e.sizes!.large?.h ?? 720,
                      resize: e.sizes!.large?.resize ?? 'fit',
                    ),
                    medium: Size(
                      w: e.sizes!.medium?.w ?? 1200,
                      h: e.sizes!.medium?.h ?? 675,
                      resize: e.sizes!.medium?.resize! ?? 'fit',
                    ),
                    thumb: Size(
                      w: e.sizes!.thumb?.w ?? 150,
                      h: e.sizes!.thumb?.h ?? 150,
                      resize: e.sizes!.thumb?.resize ?? 'crop',
                    ),
                    small: Size(
                      w: e.sizes!.small?.w ?? 680,
                      h: e.sizes!.small?.h ?? 383,
                      resize: e.sizes!.small?.resize ?? 'fit',
                    ))
                : null,
          ),
        )
        .toList();
  }

  static List<UrlEntity>? _buildUrlEntities(
    twitter_api.Entities tweetEntities,
  ) {
    return tweetEntities.urls
        ?.map(
          (e) => UrlEntity(
            url: e.url ?? '',
            expandedUrl: e.expandedUrl ?? '',
            displayUrl: e.displayUrl ?? '',
            indices: e.indices,
          ),
        )
        .toList();
  }

  static List<MentionEntity>? _buildMentionEntities(
    twitter_api.Entities tweetEntities,
  ) {
    return tweetEntities.userMentions
        ?.map(
          (e) => MentionEntity(
            screenName: e.screenName ?? '',
            indices: e.indices,
          ),
        )
        .toList();
  }

  static List<SymbolEntity>? _buildSymbolsEntities(
    twitter_api.Entities tweetEntities,
  ) {
    return tweetEntities.symbols
        ?.map(
          (e) => SymbolEntity(
            text: e.text ?? '',
            indices: e.indices,
          ),
        )
        .toList();
  }

  static List<HashtagEntity>? _buildHashtagsEntities(
    twitter_api.Entities tweetEntities,
  ) {
    return tweetEntities.hashtags
        ?.map(
          (e) => HashtagEntity(
            text: e.text ?? '',
            indices: e.indices,
          ),
        )
        .toList();
  }
}
