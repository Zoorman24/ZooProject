import 'package:json_annotation/json_annotation.dart';

part 'animals.g.dart';

@JsonSerializable()
class Animals {
  const Animals({required this.name});

  factory Animals.fromJson(Map<String, dynamic> json) =>
      _$AnimalsFromJson(json);

  final List<String> name;

  Map<String, dynamic> toJson() => _$AnimalsToJson(this);
}
