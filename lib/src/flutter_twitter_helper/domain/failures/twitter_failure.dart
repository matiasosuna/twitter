import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitter_failure.freezed.dart';

@freezed
class TwitterFailure with _$TwitterFailure {
  const factory TwitterFailure.twitterClient(String error) =
      ClientTwitterFailure;

  const factory TwitterFailure.unknown(String error) = UnknownTwitterFailure;
}
