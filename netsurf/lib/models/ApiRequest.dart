import 'package:netsurf/models/User.dart';
import 'package:netsurf/models/Quota.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ApiRequest.g.dart';

@JsonSerializable()
class ApiRequest extends Object with _$ApiRequestSerializerMixin {
  String operation;
  User user;
  Quota quota;

  ApiRequest({this.operation, this.user, this.quota});

  factory ApiRequest.fromJson(Map<String, dynamic> json) =>
      _$ApiRequestFromJson(json);
}
