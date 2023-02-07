// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'place.g.dart';

@JsonSerializable()
@CopyWith()
@Collection(ignore: {'props'})
class Place with EquatableMixin {
  Place({
    required this.name,
    required this.createdAt,
    required this.editedAt,
    this.description = '',
  }) : id = Isar.autoIncrement;

  Id id;

  @Index(unique: true)
  final String name;
  final int createdAt;
  final int editedAt;
  final String description;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceToJson(this);

  @override
  List<Object> get props => [name, createdAt, editedAt, description];
}
