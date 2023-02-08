import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'place.g.dart';

@CopyWith()
@Collection(ignore: {'props'})
class Place with EquatableMixin {
  Place({
    required this.name,
    required this.createdAt,
    required this.editedAt,
    required this.id,
    this.description = '',
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'] as int,
      name: json['name'] as String,
      createdAt: json['createdAt'] as int,
      editedAt: json['editedAt'] as int,
      description: json['description'] as String,
    );
  }

  final Id id;

  @Index(unique: true, replace: true)
  final String name;

  final int createdAt;
  final int editedAt;
  final String description;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'createdAt': createdAt,
      'editedAt': editedAt,
      'description': description,
      'id': id,
    };
  }

  @override
  List<Object> get props {
    return [name, createdAt, editedAt, description];
  }
}
