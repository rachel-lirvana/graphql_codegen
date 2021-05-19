import 'package:gql/ast.dart';
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'variables.graphql.g.dart';

@JsonSerializable()
class VariablesQueryHiBob extends JsonSerializable {
  VariablesQueryHiBob(this.i);

  @override
  factory VariablesQueryHiBob.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryHiBobFromJson(json);

  final InputI1 i;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryHiBobToJson(this);
}

@JsonSerializable()
class QueryHiBob extends JsonSerializable {
  QueryHiBob(this.field);

  @override
  factory QueryHiBob.fromJson(Map<String, dynamic> json) =>
      _$QueryHiBobFromJson(json);

  final QueryHiBob$ffield? field;

  @override
  Map<String, dynamic> toJson() => _$QueryHiBobToJson(this);
}

const DOCUMENT_QUERY_HI_BOB = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HiBob'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'i')),
            type: NamedTypeNode(name: NameNode(value: 'I1'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'field'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'i'))),
              ArgumentNode(
                  name: NameNode(value: 'b'),
                  value: BooleanValueNode(value: true))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'value'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ])),
]);

@JsonSerializable()
class QueryHiBob$ffield extends JsonSerializable {
  QueryHiBob$ffield(this.value);

  @override
  factory QueryHiBob$ffield.fromJson(Map<String, dynamic> json) =>
      _$QueryHiBob$ffieldFromJson(json);

  final String value;

  @override
  Map<String, dynamic> toJson() => _$QueryHiBob$ffieldToJson(this);
}
