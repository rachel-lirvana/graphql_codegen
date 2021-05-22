import 'dart:async';

import 'package:build/build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:graphql_codegen_config/config.dart';
import 'package:graphql_codegen/printer/printer.dart';
import 'package:graphql_codegen/context.dart';
import 'package:graphql_codegen/visitor/context_visitor.dart';

Library _generateDocument<TKey>(
  Schema<TKey> schema,
  DocumentNode entry,
  TKey key,
  BuildConfig config,
) {
  final context = ContextRoot<TKey>(schema: schema, key: key);
  entry.accept(ContextVisitor(context: context));
  return printRootContext(context, config);
}

class GenerateResult<TKey> {
  final BuiltMap<TKey, Library> entries;
  GenerateResult(this.entries);
}

FutureOr<GenerateResult<TKey>> generate<TKey>(
  Schema<TKey> schema,
  BuildConfig config,
) async {
  final entries = schema.entries.map(
    (key, value) => MapEntry<TKey, Library>(
      key,
      _generateDocument<TKey>(
        schema,
        value,
        key,
        config,
      ),
    ),
  );
  return GenerateResult(entries);
}