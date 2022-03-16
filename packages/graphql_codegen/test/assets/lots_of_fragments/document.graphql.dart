import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
part 'document.graphql.g.dart';

abstract class FragmentFragmentA implements FragmentFragmentI {
  String get $__typename;
  String? get value;
  String? get name;
}

const FRAGMENT_FRAGMENT_A = const FragmentDefinitionNode(
    name: NameNode(value: 'FragmentA'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'FieldA'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'value'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FragmentSpreadNode(name: NameNode(value: 'FragmentI'), directives: [])
    ]));

abstract class FragmentFragmentI {
  String get $__typename;
  String? get name;
}

const FRAGMENT_FRAGMENT_I = const FragmentDefinitionNode(
    name: NameNode(value: 'FragmentI'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'IField'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));

@JsonSerializable()
class QueryFetchStuff extends JsonSerializable {
  QueryFetchStuff({required this.$__typename, this.field});

  @override
  factory QueryFetchStuff.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchStuffFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final QueryFetchStuff$field? field;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuffToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$field = field;
    return Object.hashAll([l$$__typename, l$field]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchStuff) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) return false;
    return true;
  }
}

const QUERY_FETCH_STUFF = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchStuff'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'field'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FragmentSpreadNode(
                  name: NameNode(value: 'FragmentA'), directives: []),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'FieldA'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                            on: NamedTypeNode(
                                name: NameNode(value: 'IField'),
                                isNonNull: false)),
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ])),
  FRAGMENT_FRAGMENT_A,
  FRAGMENT_FRAGMENT_I,
]);

@JsonSerializable()
class QueryFetchStuff$field extends JsonSerializable {
  QueryFetchStuff$field({required this.$__typename, this.name});

  @override
  factory QueryFetchStuff$field.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "FieldA":
        return QueryFetchStuff$field$FieldA.fromJson(json);
      default:
        return _$QueryFetchStuff$fieldFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuff$fieldToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$name = name;
    return Object.hashAll([l$$__typename, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchStuff$field) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable()
class QueryFetchStuff$field$FieldA extends QueryFetchStuff$field
    implements FragmentFragmentA, FragmentFragmentI {
  QueryFetchStuff$field$FieldA(
      {this.value, required String $__typename, String? name})
      : super($__typename: $__typename, name: name);

  @override
  factory QueryFetchStuff$field$FieldA.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchStuff$field$FieldAFromJson(json);

  final String? value;

  @override
  Map<String, dynamic> toJson() => _$QueryFetchStuff$field$FieldAToJson(this);
  int get hashCode {
    final l$value = value;
    return Object.hashAll([l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchStuff$field$FieldA) ||
        runtimeType != other.runtimeType) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }
}

const POSSIBLE_TYPES_MAP = const {
  'IField': {'FieldA'}
};
