// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'particle_checkbox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParticleCheckboxAdapter extends TypeAdapter<ParticleCheckbox> {
  @override
  final int typeId = 1;

  @override
  ParticleCheckbox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ParticleCheckbox(
      title: fields[0] as String,
      state: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ParticleCheckbox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.state);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParticleCheckboxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
