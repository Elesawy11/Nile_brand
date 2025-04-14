// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_pass_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPassResponse _$ForgotPassResponseFromJson(Map<String, dynamic> json) =>
    ForgotPassResponse(
      message: json['message'] as String?,
      resetToken: json['resetToken'] as String?,
    );

Map<String, dynamic> _$ForgotPassResponseToJson(ForgotPassResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'resetToken': instance.resetToken,
    };
