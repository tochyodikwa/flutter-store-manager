import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable(createToJson: false)
class OptionAttribute {
  @JsonKey(name: 'term_id')
  int? termId;

  String? taxonomy;

  String? name;

  String? slug;

  int? count;

  @JsonKey(fromJson: _fromValue)
  String? value;

  OptionAttribute({this.termId, this.taxonomy, this.name, this.slug, this.count, this.value});

  factory OptionAttribute.fromJson(Map<String, dynamic> json) => _$OptionAttributeFromJson(json);

  static String? _fromValue(dynamic value) {
    if (value is String) return value;
    return null;
  }
}

@JsonSerializable(createToJson: false, createFactory: false)
class AttributeOptionAttributes {
  final List<OptionAttribute>? options;

  AttributeOptionAttributes({
    this.options,
  });

  factory AttributeOptionAttributes.fromJson(List<dynamic> json) {
    List<OptionAttribute> options = <OptionAttribute>[];
    options = json.map((option) => OptionAttribute.fromJson(option)).toList();

    return AttributeOptionAttributes(
      options: options,
    );
  }
}

@JsonSerializable(createToJson: false)
class Attribute {
  int? id;
  String? name;
  String? slug;
  String? type;
  @JsonKey(name: 'has_archives')
  bool? hasArchives;
  AttributeOptionAttributes? options;
  AttributeOptionAttributes? terms;

  Attribute({this.id, this.name, this.slug, this.type, this.hasArchives, this.options});

  factory Attribute.fromJson(Map<String, dynamic> json) => _$AttributeFromJson(json);
}

@JsonSerializable(createToJson: false, createFactory: false)
class Attributes {
  final List<Attribute>? attributes;

  Attributes({
    this.attributes,
  });

  factory Attributes.fromJson(List<dynamic> json) {
    List<Attribute> attributes = <Attribute>[];
    attributes = json.map((attribute) => Attribute.fromJson(attribute)).toList();

    return Attributes(
      attributes: attributes,
    );
  }
}

class ItemAttributeSelected {
  String? taxonomy;

  String? field;

  int? terms;

  String? title = '';

  ItemAttributeSelected({this.taxonomy, this.field, this.terms, this.title});

  Map get query => {'taxonomy': taxonomy, 'field': field, 'terms': terms};
}
