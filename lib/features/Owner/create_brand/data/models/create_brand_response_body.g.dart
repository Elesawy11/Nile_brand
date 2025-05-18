// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_brand_response_body.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BrandCreateResponseAdapter extends TypeAdapter<BrandCreateResponse> {
  @override
  final int typeId = 0;

  @override
  BrandCreateResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BrandCreateResponse(
      data: fields[0] as BrandData,
    );
  }

  @override
  void write(BinaryWriter writer, BrandCreateResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandCreateResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BrandDataAdapter extends TypeAdapter<BrandData> {
  @override
  final int typeId = 1;

  @override
  BrandData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BrandData(
      id: fields[0] as String,
      name: fields[1] as String,
      logo: fields[2] as String,
      description: fields[3] as String,
      taxID: fields[4] as String,
      owner: fields[5] as String,
      createdAt: fields[6] as String,
      updatedAt: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BrandData obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.logo)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.taxID)
      ..writeByte(5)
      ..write(obj.owner)
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
      other is BrandDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandCreateResponse _$BrandCreateResponseFromJson(Map<String, dynamic> json) =>
    BrandCreateResponse(
      data: BrandData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BrandCreateResponseToJson(
        BrandCreateResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

BrandData _$BrandDataFromJson(Map<String, dynamic> json) => BrandData(
      id: json['_id'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String,
      description: json['description'] as String,
      taxID: json['taxID'] as String,
      owner: json['owner'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$BrandDataToJson(BrandData instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'description': instance.description,
      'taxID': instance.taxID,
      'owner': instance.owner,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
