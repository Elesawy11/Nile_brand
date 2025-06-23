// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      userImage: json['userImage'] as String?,
      role: json['role'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'userImage': instance.userImage,
      'role': instance.role,
      'active': instance.active,
    };
