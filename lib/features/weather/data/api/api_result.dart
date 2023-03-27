import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.data(T value) = Success;
  const factory ApiResult.error([String? message]) = Failure;
}
