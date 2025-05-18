// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cuopin_success.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreateCuoponSuccessAdapter extends TypeAdapter<CreateCuoponSuccess> {
  @override
  final int typeId = 2;

  @override
  CreateCuoponSuccess read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreateCuoponSuccess(
      name: fields[0] as String?,
      expireTime: fields[1] as String?,
      discount: fields[2] as int?,
      owner: fields[3] as String?,
      id: fields[4] as String?,
      createdAt: fields[6] as String?,
      updatedAt: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CreateCuoponSuccess obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.expireTime)
      ..writeByte(2)
      ..write(obj.discount)
      ..writeByte(3)
      ..write(obj.owner)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateCuoponSuccessAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCuoponSuccess _$CreateCuoponSuccessFromJson(Map<String, dynamic> json) =>
    CreateCuoponSuccess(
      name: json['name'] as String?,
      expireTime: json['expireTime'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
      owner: json['owner'] as String?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$CreateCuoponSuccessToJson(
        CreateCuoponSuccess instance) =>
    <String, dynamic>{
      'name': instance.name,
      'expireTime': instance.expireTime,
      'discount': instance.discount,
      'owner': instance.owner,
      '_id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
