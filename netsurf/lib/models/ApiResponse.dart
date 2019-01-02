import 'package:netsurf/models/User.dart';
import 'package:netsurf/models/Quota.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiResponse.g.dart';

@JsonSerializable()
class ApiResponse extends Object with _$ApiResponseSerializerMixin {
  String result;
  String message;
  User user;
  Quota quota;

  ApiResponse({this.result, this.message, this.user, this.quota});

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
