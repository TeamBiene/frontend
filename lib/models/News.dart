import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'News.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class News {
  News(this.id, this.title, this.content, this.createdAt, this.updatedAt,
      this.authorId);

  String id;
  String title;
  String content;
  DateTime createdAt;
  DateTime updatedAt;
  String authorId;
  // List<PublicComment> comments;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
