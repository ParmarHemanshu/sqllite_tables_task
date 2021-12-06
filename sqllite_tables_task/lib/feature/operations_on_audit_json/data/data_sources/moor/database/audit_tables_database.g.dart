// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_tables_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class AuditDetailsTable extends DataClass
    implements Insertable<AuditDetailsTable> {
  final int auditId;
  AuditDetailsTable({required this.auditId});
  factory AuditDetailsTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditDetailsTable(
      auditId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_id'] = Variable<int>(auditId);
    return map;
  }

  AuditDetailsTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditDetailsTablesCompanion(
      auditId: Value(auditId),
    );
  }

  factory AuditDetailsTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditDetailsTable(
      auditId: serializer.fromJson<int>(json['auditId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditId': serializer.toJson<int>(auditId),
    };
  }

  AuditDetailsTable copyWith({int? auditId}) => AuditDetailsTable(
        auditId: auditId ?? this.auditId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditDetailsTable(')
          ..write('auditId: $auditId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditDetailsTable && other.auditId == this.auditId);
}

class AuditDetailsTablesCompanion extends UpdateCompanion<AuditDetailsTable> {
  final Value<int> auditId;
  const AuditDetailsTablesCompanion({
    this.auditId = const Value.absent(),
  });
  AuditDetailsTablesCompanion.insert({
    this.auditId = const Value.absent(),
  });
  static Insertable<AuditDetailsTable> custom({
    Expression<int>? auditId,
  }) {
    return RawValuesInsertable({
      if (auditId != null) 'audit_id': auditId,
    });
  }

  AuditDetailsTablesCompanion copyWith({Value<int>? auditId}) {
    return AuditDetailsTablesCompanion(
      auditId: auditId ?? this.auditId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditId.present) {
      map['audit_id'] = Variable<int>(auditId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditDetailsTablesCompanion(')
          ..write('auditId: $auditId')
          ..write(')'))
        .toString();
  }
}

class $AuditDetailsTablesTable extends AuditDetailsTables
    with TableInfo<$AuditDetailsTablesTable, AuditDetailsTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditDetailsTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditIdMeta = const VerificationMeta('auditId');
  late final GeneratedColumn<int?> auditId = GeneratedColumn<int?>(
      'audit_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditId];
  @override
  String get aliasedName => _alias ?? 'audit_details_tables';
  @override
  String get actualTableName => 'audit_details_tables';
  @override
  VerificationContext validateIntegrity(Insertable<AuditDetailsTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_id')) {
      context.handle(_auditIdMeta,
          auditId.isAcceptableOrUnknown(data['audit_id']!, _auditIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditId};
  @override
  AuditDetailsTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditDetailsTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditDetailsTablesTable createAlias(String alias) {
    return $AuditDetailsTablesTable(_db, alias);
  }
}

class ScoringTypesTable extends DataClass
    implements Insertable<ScoringTypesTable> {
  final int scoringTypeId;
  ScoringTypesTable({required this.scoringTypeId});
  factory ScoringTypesTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ScoringTypesTable(
      scoringTypeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}scoring_type_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['scoring_type_id'] = Variable<int>(scoringTypeId);
    return map;
  }

  ScoringTypesTablesCompanion toCompanion(bool nullToAbsent) {
    return ScoringTypesTablesCompanion(
      scoringTypeId: Value(scoringTypeId),
    );
  }

  factory ScoringTypesTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ScoringTypesTable(
      scoringTypeId: serializer.fromJson<int>(json['scoringTypeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'scoringTypeId': serializer.toJson<int>(scoringTypeId),
    };
  }

  ScoringTypesTable copyWith({int? scoringTypeId}) => ScoringTypesTable(
        scoringTypeId: scoringTypeId ?? this.scoringTypeId,
      );
  @override
  String toString() {
    return (StringBuffer('ScoringTypesTable(')
          ..write('scoringTypeId: $scoringTypeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => scoringTypeId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScoringTypesTable && other.scoringTypeId == this.scoringTypeId);
}

class ScoringTypesTablesCompanion extends UpdateCompanion<ScoringTypesTable> {
  final Value<int> scoringTypeId;
  const ScoringTypesTablesCompanion({
    this.scoringTypeId = const Value.absent(),
  });
  ScoringTypesTablesCompanion.insert({
    this.scoringTypeId = const Value.absent(),
  });
  static Insertable<ScoringTypesTable> custom({
    Expression<int>? scoringTypeId,
  }) {
    return RawValuesInsertable({
      if (scoringTypeId != null) 'scoring_type_id': scoringTypeId,
    });
  }

  ScoringTypesTablesCompanion copyWith({Value<int>? scoringTypeId}) {
    return ScoringTypesTablesCompanion(
      scoringTypeId: scoringTypeId ?? this.scoringTypeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (scoringTypeId.present) {
      map['scoring_type_id'] = Variable<int>(scoringTypeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScoringTypesTablesCompanion(')
          ..write('scoringTypeId: $scoringTypeId')
          ..write(')'))
        .toString();
  }
}

class $ScoringTypesTablesTable extends ScoringTypesTables
    with TableInfo<$ScoringTypesTablesTable, ScoringTypesTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ScoringTypesTablesTable(this._db, [this._alias]);
  final VerificationMeta _scoringTypeIdMeta =
      const VerificationMeta('scoringTypeId');
  late final GeneratedColumn<int?> scoringTypeId = GeneratedColumn<int?>(
      'scoring_type_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [scoringTypeId];
  @override
  String get aliasedName => _alias ?? 'scoring_types_tables';
  @override
  String get actualTableName => 'scoring_types_tables';
  @override
  VerificationContext validateIntegrity(Insertable<ScoringTypesTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('scoring_type_id')) {
      context.handle(
          _scoringTypeIdMeta,
          scoringTypeId.isAcceptableOrUnknown(
              data['scoring_type_id']!, _scoringTypeIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {scoringTypeId};
  @override
  ScoringTypesTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ScoringTypesTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ScoringTypesTablesTable createAlias(String alias) {
    return $ScoringTypesTablesTable(_db, alias);
  }
}

class ScoringFormulaInfoTable extends DataClass
    implements Insertable<ScoringFormulaInfoTable> {
  final int scoringFormulaDetailId;
  ScoringFormulaInfoTable({required this.scoringFormulaDetailId});
  factory ScoringFormulaInfoTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ScoringFormulaInfoTable(
      scoringFormulaDetailId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}scoring_formula_detail_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['scoring_formula_detail_id'] = Variable<int>(scoringFormulaDetailId);
    return map;
  }

  ScoringFormulaInfoTablesCompanion toCompanion(bool nullToAbsent) {
    return ScoringFormulaInfoTablesCompanion(
      scoringFormulaDetailId: Value(scoringFormulaDetailId),
    );
  }

  factory ScoringFormulaInfoTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ScoringFormulaInfoTable(
      scoringFormulaDetailId:
          serializer.fromJson<int>(json['scoringFormulaDetailId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'scoringFormulaDetailId': serializer.toJson<int>(scoringFormulaDetailId),
    };
  }

  ScoringFormulaInfoTable copyWith({int? scoringFormulaDetailId}) =>
      ScoringFormulaInfoTable(
        scoringFormulaDetailId:
            scoringFormulaDetailId ?? this.scoringFormulaDetailId,
      );
  @override
  String toString() {
    return (StringBuffer('ScoringFormulaInfoTable(')
          ..write('scoringFormulaDetailId: $scoringFormulaDetailId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => scoringFormulaDetailId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScoringFormulaInfoTable &&
          other.scoringFormulaDetailId == this.scoringFormulaDetailId);
}

class ScoringFormulaInfoTablesCompanion
    extends UpdateCompanion<ScoringFormulaInfoTable> {
  final Value<int> scoringFormulaDetailId;
  const ScoringFormulaInfoTablesCompanion({
    this.scoringFormulaDetailId = const Value.absent(),
  });
  ScoringFormulaInfoTablesCompanion.insert({
    this.scoringFormulaDetailId = const Value.absent(),
  });
  static Insertable<ScoringFormulaInfoTable> custom({
    Expression<int>? scoringFormulaDetailId,
  }) {
    return RawValuesInsertable({
      if (scoringFormulaDetailId != null)
        'scoring_formula_detail_id': scoringFormulaDetailId,
    });
  }

  ScoringFormulaInfoTablesCompanion copyWith(
      {Value<int>? scoringFormulaDetailId}) {
    return ScoringFormulaInfoTablesCompanion(
      scoringFormulaDetailId:
          scoringFormulaDetailId ?? this.scoringFormulaDetailId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (scoringFormulaDetailId.present) {
      map['scoring_formula_detail_id'] =
          Variable<int>(scoringFormulaDetailId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScoringFormulaInfoTablesCompanion(')
          ..write('scoringFormulaDetailId: $scoringFormulaDetailId')
          ..write(')'))
        .toString();
  }
}

class $ScoringFormulaInfoTablesTable extends ScoringFormulaInfoTables
    with TableInfo<$ScoringFormulaInfoTablesTable, ScoringFormulaInfoTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ScoringFormulaInfoTablesTable(this._db, [this._alias]);
  final VerificationMeta _scoringFormulaDetailIdMeta =
      const VerificationMeta('scoringFormulaDetailId');
  late final GeneratedColumn<int?> scoringFormulaDetailId =
      GeneratedColumn<int?>('scoring_formula_detail_id', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [scoringFormulaDetailId];
  @override
  String get aliasedName => _alias ?? 'scoring_formula_info_tables';
  @override
  String get actualTableName => 'scoring_formula_info_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<ScoringFormulaInfoTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('scoring_formula_detail_id')) {
      context.handle(
          _scoringFormulaDetailIdMeta,
          scoringFormulaDetailId.isAcceptableOrUnknown(
              data['scoring_formula_detail_id']!, _scoringFormulaDetailIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {scoringFormulaDetailId};
  @override
  ScoringFormulaInfoTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ScoringFormulaInfoTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ScoringFormulaInfoTablesTable createAlias(String alias) {
    return $ScoringFormulaInfoTablesTable(_db, alias);
  }
}

class AuditScoringTable extends DataClass
    implements Insertable<AuditScoringTable> {
  final int auditScoringId;
  AuditScoringTable({required this.auditScoringId});
  factory AuditScoringTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditScoringTable(
      auditScoringId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_scoring_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_scoring_id'] = Variable<int>(auditScoringId);
    return map;
  }

  AuditScoringTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditScoringTablesCompanion(
      auditScoringId: Value(auditScoringId),
    );
  }

  factory AuditScoringTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditScoringTable(
      auditScoringId: serializer.fromJson<int>(json['auditScoringId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditScoringId': serializer.toJson<int>(auditScoringId),
    };
  }

  AuditScoringTable copyWith({int? auditScoringId}) => AuditScoringTable(
        auditScoringId: auditScoringId ?? this.auditScoringId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditScoringTable(')
          ..write('auditScoringId: $auditScoringId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditScoringId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditScoringTable &&
          other.auditScoringId == this.auditScoringId);
}

class AuditScoringTablesCompanion extends UpdateCompanion<AuditScoringTable> {
  final Value<int> auditScoringId;
  const AuditScoringTablesCompanion({
    this.auditScoringId = const Value.absent(),
  });
  AuditScoringTablesCompanion.insert({
    this.auditScoringId = const Value.absent(),
  });
  static Insertable<AuditScoringTable> custom({
    Expression<int>? auditScoringId,
  }) {
    return RawValuesInsertable({
      if (auditScoringId != null) 'audit_scoring_id': auditScoringId,
    });
  }

  AuditScoringTablesCompanion copyWith({Value<int>? auditScoringId}) {
    return AuditScoringTablesCompanion(
      auditScoringId: auditScoringId ?? this.auditScoringId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditScoringId.present) {
      map['audit_scoring_id'] = Variable<int>(auditScoringId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditScoringTablesCompanion(')
          ..write('auditScoringId: $auditScoringId')
          ..write(')'))
        .toString();
  }
}

class $AuditScoringTablesTable extends AuditScoringTables
    with TableInfo<$AuditScoringTablesTable, AuditScoringTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditScoringTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditScoringIdMeta =
      const VerificationMeta('auditScoringId');
  late final GeneratedColumn<int?> auditScoringId = GeneratedColumn<int?>(
      'audit_scoring_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditScoringId];
  @override
  String get aliasedName => _alias ?? 'audit_scoring_tables';
  @override
  String get actualTableName => 'audit_scoring_tables';
  @override
  VerificationContext validateIntegrity(Insertable<AuditScoringTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_scoring_id')) {
      context.handle(
          _auditScoringIdMeta,
          auditScoringId.isAcceptableOrUnknown(
              data['audit_scoring_id']!, _auditScoringIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditScoringId};
  @override
  AuditScoringTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditScoringTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditScoringTablesTable createAlias(String alias) {
    return $AuditScoringTablesTable(_db, alias);
  }
}

class AuditEntityTable extends DataClass
    implements Insertable<AuditEntityTable> {
  final int auditEntityId;
  AuditEntityTable({required this.auditEntityId});
  factory AuditEntityTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEntityTable(
      auditEntityId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_entity_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_entity_id'] = Variable<int>(auditEntityId);
    return map;
  }

  AuditEntityTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditEntityTablesCompanion(
      auditEntityId: Value(auditEntityId),
    );
  }

  factory AuditEntityTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditEntityTable(
      auditEntityId: serializer.fromJson<int>(json['auditEntityId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditEntityId': serializer.toJson<int>(auditEntityId),
    };
  }

  AuditEntityTable copyWith({int? auditEntityId}) => AuditEntityTable(
        auditEntityId: auditEntityId ?? this.auditEntityId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEntityTable(')
          ..write('auditEntityId: $auditEntityId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditEntityId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEntityTable && other.auditEntityId == this.auditEntityId);
}

class AuditEntityTablesCompanion extends UpdateCompanion<AuditEntityTable> {
  final Value<int> auditEntityId;
  const AuditEntityTablesCompanion({
    this.auditEntityId = const Value.absent(),
  });
  AuditEntityTablesCompanion.insert({
    this.auditEntityId = const Value.absent(),
  });
  static Insertable<AuditEntityTable> custom({
    Expression<int>? auditEntityId,
  }) {
    return RawValuesInsertable({
      if (auditEntityId != null) 'audit_entity_id': auditEntityId,
    });
  }

  AuditEntityTablesCompanion copyWith({Value<int>? auditEntityId}) {
    return AuditEntityTablesCompanion(
      auditEntityId: auditEntityId ?? this.auditEntityId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditEntityId.present) {
      map['audit_entity_id'] = Variable<int>(auditEntityId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEntityTablesCompanion(')
          ..write('auditEntityId: $auditEntityId')
          ..write(')'))
        .toString();
  }
}

class $AuditEntityTablesTable extends AuditEntityTables
    with TableInfo<$AuditEntityTablesTable, AuditEntityTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditEntityTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditEntityIdMeta =
      const VerificationMeta('auditEntityId');
  late final GeneratedColumn<int?> auditEntityId = GeneratedColumn<int?>(
      'audit_entity_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditEntityId];
  @override
  String get aliasedName => _alias ?? 'audit_entity_tables';
  @override
  String get actualTableName => 'audit_entity_tables';
  @override
  VerificationContext validateIntegrity(Insertable<AuditEntityTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_entity_id')) {
      context.handle(
          _auditEntityIdMeta,
          auditEntityId.isAcceptableOrUnknown(
              data['audit_entity_id']!, _auditEntityIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditEntityId};
  @override
  AuditEntityTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditEntityTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditEntityTablesTable createAlias(String alias) {
    return $AuditEntityTablesTable(_db, alias);
  }
}

class AuditQuestionTable extends DataClass
    implements Insertable<AuditQuestionTable> {
  final int auditQuestionId;
  AuditQuestionTable({required this.auditQuestionId});
  factory AuditQuestionTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditQuestionTable(
      auditQuestionId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_question_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_question_id'] = Variable<int>(auditQuestionId);
    return map;
  }

  AuditQuestionTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditQuestionTablesCompanion(
      auditQuestionId: Value(auditQuestionId),
    );
  }

  factory AuditQuestionTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditQuestionTable(
      auditQuestionId: serializer.fromJson<int>(json['auditQuestionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditQuestionId': serializer.toJson<int>(auditQuestionId),
    };
  }

  AuditQuestionTable copyWith({int? auditQuestionId}) => AuditQuestionTable(
        auditQuestionId: auditQuestionId ?? this.auditQuestionId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditQuestionTable(')
          ..write('auditQuestionId: $auditQuestionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditQuestionId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditQuestionTable &&
          other.auditQuestionId == this.auditQuestionId);
}

class AuditQuestionTablesCompanion extends UpdateCompanion<AuditQuestionTable> {
  final Value<int> auditQuestionId;
  const AuditQuestionTablesCompanion({
    this.auditQuestionId = const Value.absent(),
  });
  AuditQuestionTablesCompanion.insert({
    this.auditQuestionId = const Value.absent(),
  });
  static Insertable<AuditQuestionTable> custom({
    Expression<int>? auditQuestionId,
  }) {
    return RawValuesInsertable({
      if (auditQuestionId != null) 'audit_question_id': auditQuestionId,
    });
  }

  AuditQuestionTablesCompanion copyWith({Value<int>? auditQuestionId}) {
    return AuditQuestionTablesCompanion(
      auditQuestionId: auditQuestionId ?? this.auditQuestionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditQuestionId.present) {
      map['audit_question_id'] = Variable<int>(auditQuestionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditQuestionTablesCompanion(')
          ..write('auditQuestionId: $auditQuestionId')
          ..write(')'))
        .toString();
  }
}

class $AuditQuestionTablesTable extends AuditQuestionTables
    with TableInfo<$AuditQuestionTablesTable, AuditQuestionTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditQuestionTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditQuestionIdMeta =
      const VerificationMeta('auditQuestionId');
  late final GeneratedColumn<int?> auditQuestionId = GeneratedColumn<int?>(
      'audit_question_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditQuestionId];
  @override
  String get aliasedName => _alias ?? 'audit_question_tables';
  @override
  String get actualTableName => 'audit_question_tables';
  @override
  VerificationContext validateIntegrity(Insertable<AuditQuestionTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_question_id')) {
      context.handle(
          _auditQuestionIdMeta,
          auditQuestionId.isAcceptableOrUnknown(
              data['audit_question_id']!, _auditQuestionIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditQuestionId};
  @override
  AuditQuestionTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditQuestionTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditQuestionTablesTable createAlias(String alias) {
    return $AuditQuestionTablesTable(_db, alias);
  }
}

class AuditEntityTypesTable extends DataClass
    implements Insertable<AuditEntityTypesTable> {
  final int auditEntityTypeId;
  AuditEntityTypesTable({required this.auditEntityTypeId});
  factory AuditEntityTypesTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEntityTypesTable(
      auditEntityTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_entity_type_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_entity_type_id'] = Variable<int>(auditEntityTypeId);
    return map;
  }

  AuditEntityTypesTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditEntityTypesTablesCompanion(
      auditEntityTypeId: Value(auditEntityTypeId),
    );
  }

  factory AuditEntityTypesTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditEntityTypesTable(
      auditEntityTypeId: serializer.fromJson<int>(json['auditEntityTypeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditEntityTypeId': serializer.toJson<int>(auditEntityTypeId),
    };
  }

  AuditEntityTypesTable copyWith({int? auditEntityTypeId}) =>
      AuditEntityTypesTable(
        auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEntityTypesTable(')
          ..write('auditEntityTypeId: $auditEntityTypeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditEntityTypeId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEntityTypesTable &&
          other.auditEntityTypeId == this.auditEntityTypeId);
}

class AuditEntityTypesTablesCompanion
    extends UpdateCompanion<AuditEntityTypesTable> {
  final Value<int> auditEntityTypeId;
  const AuditEntityTypesTablesCompanion({
    this.auditEntityTypeId = const Value.absent(),
  });
  AuditEntityTypesTablesCompanion.insert({
    this.auditEntityTypeId = const Value.absent(),
  });
  static Insertable<AuditEntityTypesTable> custom({
    Expression<int>? auditEntityTypeId,
  }) {
    return RawValuesInsertable({
      if (auditEntityTypeId != null) 'audit_entity_type_id': auditEntityTypeId,
    });
  }

  AuditEntityTypesTablesCompanion copyWith({Value<int>? auditEntityTypeId}) {
    return AuditEntityTypesTablesCompanion(
      auditEntityTypeId: auditEntityTypeId ?? this.auditEntityTypeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditEntityTypeId.present) {
      map['audit_entity_type_id'] = Variable<int>(auditEntityTypeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEntityTypesTablesCompanion(')
          ..write('auditEntityTypeId: $auditEntityTypeId')
          ..write(')'))
        .toString();
  }
}

class $AuditEntityTypesTablesTable extends AuditEntityTypesTables
    with TableInfo<$AuditEntityTypesTablesTable, AuditEntityTypesTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditEntityTypesTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditEntityTypeIdMeta =
      const VerificationMeta('auditEntityTypeId');
  late final GeneratedColumn<int?> auditEntityTypeId = GeneratedColumn<int?>(
      'audit_entity_type_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditEntityTypeId];
  @override
  String get aliasedName => _alias ?? 'audit_entity_types_tables';
  @override
  String get actualTableName => 'audit_entity_types_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditEntityTypesTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_entity_type_id')) {
      context.handle(
          _auditEntityTypeIdMeta,
          auditEntityTypeId.isAcceptableOrUnknown(
              data['audit_entity_type_id']!, _auditEntityTypeIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditEntityTypeId};
  @override
  AuditEntityTypesTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditEntityTypesTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditEntityTypesTablesTable createAlias(String alias) {
    return $AuditEntityTypesTablesTable(_db, alias);
  }
}

class AuditEntityTypeQuestionsTable extends DataClass
    implements Insertable<AuditEntityTypeQuestionsTable> {
  final int auditEntityTypeQuestionId;
  AuditEntityTypeQuestionsTable({required this.auditEntityTypeQuestionId});
  factory AuditEntityTypeQuestionsTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEntityTypeQuestionsTable(
      auditEntityTypeQuestionId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_entity_type_question_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_entity_type_question_id'] =
        Variable<int>(auditEntityTypeQuestionId);
    return map;
  }

  AuditEntityTypeQuestionsTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditEntityTypeQuestionsTablesCompanion(
      auditEntityTypeQuestionId: Value(auditEntityTypeQuestionId),
    );
  }

  factory AuditEntityTypeQuestionsTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditEntityTypeQuestionsTable(
      auditEntityTypeQuestionId:
          serializer.fromJson<int>(json['auditEntityTypeQuestionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditEntityTypeQuestionId':
          serializer.toJson<int>(auditEntityTypeQuestionId),
    };
  }

  AuditEntityTypeQuestionsTable copyWith({int? auditEntityTypeQuestionId}) =>
      AuditEntityTypeQuestionsTable(
        auditEntityTypeQuestionId:
            auditEntityTypeQuestionId ?? this.auditEntityTypeQuestionId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEntityTypeQuestionsTable(')
          ..write('auditEntityTypeQuestionId: $auditEntityTypeQuestionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditEntityTypeQuestionId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEntityTypeQuestionsTable &&
          other.auditEntityTypeQuestionId == this.auditEntityTypeQuestionId);
}

class AuditEntityTypeQuestionsTablesCompanion
    extends UpdateCompanion<AuditEntityTypeQuestionsTable> {
  final Value<int> auditEntityTypeQuestionId;
  const AuditEntityTypeQuestionsTablesCompanion({
    this.auditEntityTypeQuestionId = const Value.absent(),
  });
  AuditEntityTypeQuestionsTablesCompanion.insert({
    this.auditEntityTypeQuestionId = const Value.absent(),
  });
  static Insertable<AuditEntityTypeQuestionsTable> custom({
    Expression<int>? auditEntityTypeQuestionId,
  }) {
    return RawValuesInsertable({
      if (auditEntityTypeQuestionId != null)
        'audit_entity_type_question_id': auditEntityTypeQuestionId,
    });
  }

  AuditEntityTypeQuestionsTablesCompanion copyWith(
      {Value<int>? auditEntityTypeQuestionId}) {
    return AuditEntityTypeQuestionsTablesCompanion(
      auditEntityTypeQuestionId:
          auditEntityTypeQuestionId ?? this.auditEntityTypeQuestionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditEntityTypeQuestionId.present) {
      map['audit_entity_type_question_id'] =
          Variable<int>(auditEntityTypeQuestionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEntityTypeQuestionsTablesCompanion(')
          ..write('auditEntityTypeQuestionId: $auditEntityTypeQuestionId')
          ..write(')'))
        .toString();
  }
}

class $AuditEntityTypeQuestionsTablesTable
    extends AuditEntityTypeQuestionsTables
    with
        TableInfo<$AuditEntityTypeQuestionsTablesTable,
            AuditEntityTypeQuestionsTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditEntityTypeQuestionsTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditEntityTypeQuestionIdMeta =
      const VerificationMeta('auditEntityTypeQuestionId');
  late final GeneratedColumn<int?> auditEntityTypeQuestionId =
      GeneratedColumn<int?>('audit_entity_type_question_id', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditEntityTypeQuestionId];
  @override
  String get aliasedName => _alias ?? 'audit_entity_type_questions_tables';
  @override
  String get actualTableName => 'audit_entity_type_questions_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditEntityTypeQuestionsTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_entity_type_question_id')) {
      context.handle(
          _auditEntityTypeQuestionIdMeta,
          auditEntityTypeQuestionId.isAcceptableOrUnknown(
              data['audit_entity_type_question_id']!,
              _auditEntityTypeQuestionIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditEntityTypeQuestionId};
  @override
  AuditEntityTypeQuestionsTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditEntityTypeQuestionsTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditEntityTypeQuestionsTablesTable createAlias(String alias) {
    return $AuditEntityTypeQuestionsTablesTable(_db, alias);
  }
}

class AuditCorrectiveActionsTable extends DataClass
    implements Insertable<AuditCorrectiveActionsTable> {
  final int auditCorrectiveActionId;
  AuditCorrectiveActionsTable({required this.auditCorrectiveActionId});
  factory AuditCorrectiveActionsTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditCorrectiveActionsTable(
      auditCorrectiveActionId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_corrective_action_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_corrective_action_id'] = Variable<int>(auditCorrectiveActionId);
    return map;
  }

  AuditCorrectiveActionsTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditCorrectiveActionsTablesCompanion(
      auditCorrectiveActionId: Value(auditCorrectiveActionId),
    );
  }

  factory AuditCorrectiveActionsTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditCorrectiveActionsTable(
      auditCorrectiveActionId:
          serializer.fromJson<int>(json['auditCorrectiveActionId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditCorrectiveActionId':
          serializer.toJson<int>(auditCorrectiveActionId),
    };
  }

  AuditCorrectiveActionsTable copyWith({int? auditCorrectiveActionId}) =>
      AuditCorrectiveActionsTable(
        auditCorrectiveActionId:
            auditCorrectiveActionId ?? this.auditCorrectiveActionId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditCorrectiveActionsTable(')
          ..write('auditCorrectiveActionId: $auditCorrectiveActionId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditCorrectiveActionId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditCorrectiveActionsTable &&
          other.auditCorrectiveActionId == this.auditCorrectiveActionId);
}

class AuditCorrectiveActionsTablesCompanion
    extends UpdateCompanion<AuditCorrectiveActionsTable> {
  final Value<int> auditCorrectiveActionId;
  const AuditCorrectiveActionsTablesCompanion({
    this.auditCorrectiveActionId = const Value.absent(),
  });
  AuditCorrectiveActionsTablesCompanion.insert({
    this.auditCorrectiveActionId = const Value.absent(),
  });
  static Insertable<AuditCorrectiveActionsTable> custom({
    Expression<int>? auditCorrectiveActionId,
  }) {
    return RawValuesInsertable({
      if (auditCorrectiveActionId != null)
        'audit_corrective_action_id': auditCorrectiveActionId,
    });
  }

  AuditCorrectiveActionsTablesCompanion copyWith(
      {Value<int>? auditCorrectiveActionId}) {
    return AuditCorrectiveActionsTablesCompanion(
      auditCorrectiveActionId:
          auditCorrectiveActionId ?? this.auditCorrectiveActionId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditCorrectiveActionId.present) {
      map['audit_corrective_action_id'] =
          Variable<int>(auditCorrectiveActionId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditCorrectiveActionsTablesCompanion(')
          ..write('auditCorrectiveActionId: $auditCorrectiveActionId')
          ..write(')'))
        .toString();
  }
}

class $AuditCorrectiveActionsTablesTable extends AuditCorrectiveActionsTables
    with
        TableInfo<$AuditCorrectiveActionsTablesTable,
            AuditCorrectiveActionsTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditCorrectiveActionsTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditCorrectiveActionIdMeta =
      const VerificationMeta('auditCorrectiveActionId');
  late final GeneratedColumn<int?> auditCorrectiveActionId =
      GeneratedColumn<int?>('audit_corrective_action_id', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditCorrectiveActionId];
  @override
  String get aliasedName => _alias ?? 'audit_corrective_actions_tables';
  @override
  String get actualTableName => 'audit_corrective_actions_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditCorrectiveActionsTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_corrective_action_id')) {
      context.handle(
          _auditCorrectiveActionIdMeta,
          auditCorrectiveActionId.isAcceptableOrUnknown(
              data['audit_corrective_action_id']!,
              _auditCorrectiveActionIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCorrectiveActionId};
  @override
  AuditCorrectiveActionsTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditCorrectiveActionsTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditCorrectiveActionsTablesTable createAlias(String alias) {
    return $AuditCorrectiveActionsTablesTable(_db, alias);
  }
}

class AuditFailureReasonTable extends DataClass
    implements Insertable<AuditFailureReasonTable> {
  final int auditFailureReasonId;
  AuditFailureReasonTable({required this.auditFailureReasonId});
  factory AuditFailureReasonTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditFailureReasonTable(
      auditFailureReasonId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_failure_reason_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_failure_reason_id'] = Variable<int>(auditFailureReasonId);
    return map;
  }

  AuditFailureReasonTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditFailureReasonTablesCompanion(
      auditFailureReasonId: Value(auditFailureReasonId),
    );
  }

  factory AuditFailureReasonTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditFailureReasonTable(
      auditFailureReasonId:
          serializer.fromJson<int>(json['auditFailureReasonId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditFailureReasonId': serializer.toJson<int>(auditFailureReasonId),
    };
  }

  AuditFailureReasonTable copyWith({int? auditFailureReasonId}) =>
      AuditFailureReasonTable(
        auditFailureReasonId: auditFailureReasonId ?? this.auditFailureReasonId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditFailureReasonTable(')
          ..write('auditFailureReasonId: $auditFailureReasonId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditFailureReasonId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditFailureReasonTable &&
          other.auditFailureReasonId == this.auditFailureReasonId);
}

class AuditFailureReasonTablesCompanion
    extends UpdateCompanion<AuditFailureReasonTable> {
  final Value<int> auditFailureReasonId;
  const AuditFailureReasonTablesCompanion({
    this.auditFailureReasonId = const Value.absent(),
  });
  AuditFailureReasonTablesCompanion.insert({
    this.auditFailureReasonId = const Value.absent(),
  });
  static Insertable<AuditFailureReasonTable> custom({
    Expression<int>? auditFailureReasonId,
  }) {
    return RawValuesInsertable({
      if (auditFailureReasonId != null)
        'audit_failure_reason_id': auditFailureReasonId,
    });
  }

  AuditFailureReasonTablesCompanion copyWith(
      {Value<int>? auditFailureReasonId}) {
    return AuditFailureReasonTablesCompanion(
      auditFailureReasonId: auditFailureReasonId ?? this.auditFailureReasonId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditFailureReasonId.present) {
      map['audit_failure_reason_id'] =
          Variable<int>(auditFailureReasonId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditFailureReasonTablesCompanion(')
          ..write('auditFailureReasonId: $auditFailureReasonId')
          ..write(')'))
        .toString();
  }
}

class $AuditFailureReasonTablesTable extends AuditFailureReasonTables
    with TableInfo<$AuditFailureReasonTablesTable, AuditFailureReasonTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditFailureReasonTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditFailureReasonIdMeta =
      const VerificationMeta('auditFailureReasonId');
  late final GeneratedColumn<int?> auditFailureReasonId = GeneratedColumn<int?>(
      'audit_failure_reason_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditFailureReasonId];
  @override
  String get aliasedName => _alias ?? 'audit_failure_reason_tables';
  @override
  String get actualTableName => 'audit_failure_reason_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditFailureReasonTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_failure_reason_id')) {
      context.handle(
          _auditFailureReasonIdMeta,
          auditFailureReasonId.isAcceptableOrUnknown(
              data['audit_failure_reason_id']!, _auditFailureReasonIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditFailureReasonId};
  @override
  AuditFailureReasonTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditFailureReasonTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditFailureReasonTablesTable createAlias(String alias) {
    return $AuditFailureReasonTablesTable(_db, alias);
  }
}

class AuditAdditionalFieldsTable extends DataClass
    implements Insertable<AuditAdditionalFieldsTable> {
  final int additionalFieldId;
  AuditAdditionalFieldsTable({required this.additionalFieldId});
  factory AuditAdditionalFieldsTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditAdditionalFieldsTable(
      additionalFieldId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additional_field_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['additional_field_id'] = Variable<int>(additionalFieldId);
    return map;
  }

  AuditAdditionalFieldsTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditAdditionalFieldsTablesCompanion(
      additionalFieldId: Value(additionalFieldId),
    );
  }

  factory AuditAdditionalFieldsTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditAdditionalFieldsTable(
      additionalFieldId: serializer.fromJson<int>(json['additionalFieldId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'additionalFieldId': serializer.toJson<int>(additionalFieldId),
    };
  }

  AuditAdditionalFieldsTable copyWith({int? additionalFieldId}) =>
      AuditAdditionalFieldsTable(
        additionalFieldId: additionalFieldId ?? this.additionalFieldId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldsTable(')
          ..write('additionalFieldId: $additionalFieldId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => additionalFieldId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditAdditionalFieldsTable &&
          other.additionalFieldId == this.additionalFieldId);
}

class AuditAdditionalFieldsTablesCompanion
    extends UpdateCompanion<AuditAdditionalFieldsTable> {
  final Value<int> additionalFieldId;
  const AuditAdditionalFieldsTablesCompanion({
    this.additionalFieldId = const Value.absent(),
  });
  AuditAdditionalFieldsTablesCompanion.insert({
    this.additionalFieldId = const Value.absent(),
  });
  static Insertable<AuditAdditionalFieldsTable> custom({
    Expression<int>? additionalFieldId,
  }) {
    return RawValuesInsertable({
      if (additionalFieldId != null) 'additional_field_id': additionalFieldId,
    });
  }

  AuditAdditionalFieldsTablesCompanion copyWith(
      {Value<int>? additionalFieldId}) {
    return AuditAdditionalFieldsTablesCompanion(
      additionalFieldId: additionalFieldId ?? this.additionalFieldId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (additionalFieldId.present) {
      map['additional_field_id'] = Variable<int>(additionalFieldId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldsTablesCompanion(')
          ..write('additionalFieldId: $additionalFieldId')
          ..write(')'))
        .toString();
  }
}

class $AuditAdditionalFieldsTablesTable extends AuditAdditionalFieldsTables
    with
        TableInfo<$AuditAdditionalFieldsTablesTable,
            AuditAdditionalFieldsTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditAdditionalFieldsTablesTable(this._db, [this._alias]);
  final VerificationMeta _additionalFieldIdMeta =
      const VerificationMeta('additionalFieldId');
  late final GeneratedColumn<int?> additionalFieldId = GeneratedColumn<int?>(
      'additional_field_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [additionalFieldId];
  @override
  String get aliasedName => _alias ?? 'audit_additional_fields_tables';
  @override
  String get actualTableName => 'audit_additional_fields_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditAdditionalFieldsTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('additional_field_id')) {
      context.handle(
          _additionalFieldIdMeta,
          additionalFieldId.isAcceptableOrUnknown(
              data['additional_field_id']!, _additionalFieldIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {additionalFieldId};
  @override
  AuditAdditionalFieldsTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditAdditionalFieldsTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditAdditionalFieldsTablesTable createAlias(String alias) {
    return $AuditAdditionalFieldsTablesTable(_db, alias);
  }
}

class AuditAdditionalFieldTypeValuesTable extends DataClass
    implements Insertable<AuditAdditionalFieldTypeValuesTable> {
  final int additionalFieldTypeValueId;
  AuditAdditionalFieldTypeValuesTable(
      {required this.additionalFieldTypeValueId});
  factory AuditAdditionalFieldTypeValuesTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditAdditionalFieldTypeValuesTable(
      additionalFieldTypeValueId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additional_field_type_value_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['additional_field_type_value_id'] =
        Variable<int>(additionalFieldTypeValueId);
    return map;
  }

  AuditAdditionalFieldTypeValuesTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditAdditionalFieldTypeValuesTablesCompanion(
      additionalFieldTypeValueId: Value(additionalFieldTypeValueId),
    );
  }

  factory AuditAdditionalFieldTypeValuesTable.fromJson(
      Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditAdditionalFieldTypeValuesTable(
      additionalFieldTypeValueId:
          serializer.fromJson<int>(json['additionalFieldTypeValueId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'additionalFieldTypeValueId':
          serializer.toJson<int>(additionalFieldTypeValueId),
    };
  }

  AuditAdditionalFieldTypeValuesTable copyWith(
          {int? additionalFieldTypeValueId}) =>
      AuditAdditionalFieldTypeValuesTable(
        additionalFieldTypeValueId:
            additionalFieldTypeValueId ?? this.additionalFieldTypeValueId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldTypeValuesTable(')
          ..write('additionalFieldTypeValueId: $additionalFieldTypeValueId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => additionalFieldTypeValueId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditAdditionalFieldTypeValuesTable &&
          other.additionalFieldTypeValueId == this.additionalFieldTypeValueId);
}

class AuditAdditionalFieldTypeValuesTablesCompanion
    extends UpdateCompanion<AuditAdditionalFieldTypeValuesTable> {
  final Value<int> additionalFieldTypeValueId;
  const AuditAdditionalFieldTypeValuesTablesCompanion({
    this.additionalFieldTypeValueId = const Value.absent(),
  });
  AuditAdditionalFieldTypeValuesTablesCompanion.insert({
    this.additionalFieldTypeValueId = const Value.absent(),
  });
  static Insertable<AuditAdditionalFieldTypeValuesTable> custom({
    Expression<int>? additionalFieldTypeValueId,
  }) {
    return RawValuesInsertable({
      if (additionalFieldTypeValueId != null)
        'additional_field_type_value_id': additionalFieldTypeValueId,
    });
  }

  AuditAdditionalFieldTypeValuesTablesCompanion copyWith(
      {Value<int>? additionalFieldTypeValueId}) {
    return AuditAdditionalFieldTypeValuesTablesCompanion(
      additionalFieldTypeValueId:
          additionalFieldTypeValueId ?? this.additionalFieldTypeValueId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (additionalFieldTypeValueId.present) {
      map['additional_field_type_value_id'] =
          Variable<int>(additionalFieldTypeValueId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldTypeValuesTablesCompanion(')
          ..write('additionalFieldTypeValueId: $additionalFieldTypeValueId')
          ..write(')'))
        .toString();
  }
}

class $AuditAdditionalFieldTypeValuesTablesTable
    extends AuditAdditionalFieldTypeValuesTables
    with
        TableInfo<$AuditAdditionalFieldTypeValuesTablesTable,
            AuditAdditionalFieldTypeValuesTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditAdditionalFieldTypeValuesTablesTable(this._db, [this._alias]);
  final VerificationMeta _additionalFieldTypeValueIdMeta =
      const VerificationMeta('additionalFieldTypeValueId');
  late final GeneratedColumn<int?> additionalFieldTypeValueId =
      GeneratedColumn<int?>(
          'additional_field_type_value_id', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [additionalFieldTypeValueId];
  @override
  String get aliasedName =>
      _alias ?? 'audit_additional_field_type_values_tables';
  @override
  String get actualTableName => 'audit_additional_field_type_values_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditAdditionalFieldTypeValuesTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('additional_field_type_value_id')) {
      context.handle(
          _additionalFieldTypeValueIdMeta,
          additionalFieldTypeValueId.isAcceptableOrUnknown(
              data['additional_field_type_value_id']!,
              _additionalFieldTypeValueIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {additionalFieldTypeValueId};
  @override
  AuditAdditionalFieldTypeValuesTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditAdditionalFieldTypeValuesTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditAdditionalFieldTypeValuesTablesTable createAlias(String alias) {
    return $AuditAdditionalFieldTypeValuesTablesTable(_db, alias);
  }
}

class AuditAdditionalFieldEntityTypesTable extends DataClass
    implements Insertable<AuditAdditionalFieldEntityTypesTable> {
  final int additionalFieldEntityTypeId;
  AuditAdditionalFieldEntityTypesTable(
      {required this.additionalFieldEntityTypeId});
  factory AuditAdditionalFieldEntityTypesTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditAdditionalFieldEntityTypesTable(
      additionalFieldEntityTypeId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}additional_field_entity_type_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['additional_field_entity_type_id'] =
        Variable<int>(additionalFieldEntityTypeId);
    return map;
  }

  AuditAdditionalFieldEntityTypesTablesCompanion toCompanion(
      bool nullToAbsent) {
    return AuditAdditionalFieldEntityTypesTablesCompanion(
      additionalFieldEntityTypeId: Value(additionalFieldEntityTypeId),
    );
  }

  factory AuditAdditionalFieldEntityTypesTable.fromJson(
      Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditAdditionalFieldEntityTypesTable(
      additionalFieldEntityTypeId:
          serializer.fromJson<int>(json['additionalFieldEntityTypeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'additionalFieldEntityTypeId':
          serializer.toJson<int>(additionalFieldEntityTypeId),
    };
  }

  AuditAdditionalFieldEntityTypesTable copyWith(
          {int? additionalFieldEntityTypeId}) =>
      AuditAdditionalFieldEntityTypesTable(
        additionalFieldEntityTypeId:
            additionalFieldEntityTypeId ?? this.additionalFieldEntityTypeId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldEntityTypesTable(')
          ..write('additionalFieldEntityTypeId: $additionalFieldEntityTypeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => additionalFieldEntityTypeId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditAdditionalFieldEntityTypesTable &&
          other.additionalFieldEntityTypeId ==
              this.additionalFieldEntityTypeId);
}

class AuditAdditionalFieldEntityTypesTablesCompanion
    extends UpdateCompanion<AuditAdditionalFieldEntityTypesTable> {
  final Value<int> additionalFieldEntityTypeId;
  const AuditAdditionalFieldEntityTypesTablesCompanion({
    this.additionalFieldEntityTypeId = const Value.absent(),
  });
  AuditAdditionalFieldEntityTypesTablesCompanion.insert({
    this.additionalFieldEntityTypeId = const Value.absent(),
  });
  static Insertable<AuditAdditionalFieldEntityTypesTable> custom({
    Expression<int>? additionalFieldEntityTypeId,
  }) {
    return RawValuesInsertable({
      if (additionalFieldEntityTypeId != null)
        'additional_field_entity_type_id': additionalFieldEntityTypeId,
    });
  }

  AuditAdditionalFieldEntityTypesTablesCompanion copyWith(
      {Value<int>? additionalFieldEntityTypeId}) {
    return AuditAdditionalFieldEntityTypesTablesCompanion(
      additionalFieldEntityTypeId:
          additionalFieldEntityTypeId ?? this.additionalFieldEntityTypeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (additionalFieldEntityTypeId.present) {
      map['additional_field_entity_type_id'] =
          Variable<int>(additionalFieldEntityTypeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditAdditionalFieldEntityTypesTablesCompanion(')
          ..write('additionalFieldEntityTypeId: $additionalFieldEntityTypeId')
          ..write(')'))
        .toString();
  }
}

class $AuditAdditionalFieldEntityTypesTablesTable
    extends AuditAdditionalFieldEntityTypesTables
    with
        TableInfo<$AuditAdditionalFieldEntityTypesTablesTable,
            AuditAdditionalFieldEntityTypesTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditAdditionalFieldEntityTypesTablesTable(this._db, [this._alias]);
  final VerificationMeta _additionalFieldEntityTypeIdMeta =
      const VerificationMeta('additionalFieldEntityTypeId');
  late final GeneratedColumn<int?> additionalFieldEntityTypeId =
      GeneratedColumn<int?>(
          'additional_field_entity_type_id', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [additionalFieldEntityTypeId];
  @override
  String get aliasedName =>
      _alias ?? 'audit_additional_field_entity_types_tables';
  @override
  String get actualTableName => 'audit_additional_field_entity_types_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditAdditionalFieldEntityTypesTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('additional_field_entity_type_id')) {
      context.handle(
          _additionalFieldEntityTypeIdMeta,
          additionalFieldEntityTypeId.isAcceptableOrUnknown(
              data['additional_field_entity_type_id']!,
              _additionalFieldEntityTypeIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {additionalFieldEntityTypeId};
  @override
  AuditAdditionalFieldEntityTypesTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditAdditionalFieldEntityTypesTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditAdditionalFieldEntityTypesTablesTable createAlias(String alias) {
    return $AuditAdditionalFieldEntityTypesTablesTable(_db, alias);
  }
}

class SizeTable extends DataClass implements Insertable<SizeTable> {
  final int androidMaxUploadFileSize;
  SizeTable({required this.androidMaxUploadFileSize});
  factory SizeTable.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SizeTable(
      androidMaxUploadFileSize: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}android_max_upload_file_size'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['android_max_upload_file_size'] =
        Variable<int>(androidMaxUploadFileSize);
    return map;
  }

  SizeTablesCompanion toCompanion(bool nullToAbsent) {
    return SizeTablesCompanion(
      androidMaxUploadFileSize: Value(androidMaxUploadFileSize),
    );
  }

  factory SizeTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SizeTable(
      androidMaxUploadFileSize:
          serializer.fromJson<int>(json['androidMaxUploadFileSize']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'androidMaxUploadFileSize':
          serializer.toJson<int>(androidMaxUploadFileSize),
    };
  }

  SizeTable copyWith({int? androidMaxUploadFileSize}) => SizeTable(
        androidMaxUploadFileSize:
            androidMaxUploadFileSize ?? this.androidMaxUploadFileSize,
      );
  @override
  String toString() {
    return (StringBuffer('SizeTable(')
          ..write('androidMaxUploadFileSize: $androidMaxUploadFileSize')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => androidMaxUploadFileSize.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SizeTable &&
          other.androidMaxUploadFileSize == this.androidMaxUploadFileSize);
}

class SizeTablesCompanion extends UpdateCompanion<SizeTable> {
  final Value<int> androidMaxUploadFileSize;
  const SizeTablesCompanion({
    this.androidMaxUploadFileSize = const Value.absent(),
  });
  SizeTablesCompanion.insert({
    required int androidMaxUploadFileSize,
  }) : androidMaxUploadFileSize = Value(androidMaxUploadFileSize);
  static Insertable<SizeTable> custom({
    Expression<int>? androidMaxUploadFileSize,
  }) {
    return RawValuesInsertable({
      if (androidMaxUploadFileSize != null)
        'android_max_upload_file_size': androidMaxUploadFileSize,
    });
  }

  SizeTablesCompanion copyWith({Value<int>? androidMaxUploadFileSize}) {
    return SizeTablesCompanion(
      androidMaxUploadFileSize:
          androidMaxUploadFileSize ?? this.androidMaxUploadFileSize,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (androidMaxUploadFileSize.present) {
      map['android_max_upload_file_size'] =
          Variable<int>(androidMaxUploadFileSize.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SizeTablesCompanion(')
          ..write('androidMaxUploadFileSize: $androidMaxUploadFileSize')
          ..write(')'))
        .toString();
  }
}

class $SizeTablesTable extends SizeTables
    with TableInfo<$SizeTablesTable, SizeTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SizeTablesTable(this._db, [this._alias]);
  final VerificationMeta _androidMaxUploadFileSizeMeta =
      const VerificationMeta('androidMaxUploadFileSize');
  late final GeneratedColumn<int?> androidMaxUploadFileSize =
      GeneratedColumn<int?>('android_max_upload_file_size', aliasedName, false,
          typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [androidMaxUploadFileSize];
  @override
  String get aliasedName => _alias ?? 'size_tables';
  @override
  String get actualTableName => 'size_tables';
  @override
  VerificationContext validateIntegrity(Insertable<SizeTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('android_max_upload_file_size')) {
      context.handle(
          _androidMaxUploadFileSizeMeta,
          androidMaxUploadFileSize.isAcceptableOrUnknown(
              data['android_max_upload_file_size']!,
              _androidMaxUploadFileSizeMeta));
    } else if (isInserting) {
      context.missing(_androidMaxUploadFileSizeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SizeTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SizeTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SizeTablesTable createAlias(String alias) {
    return $SizeTablesTable(_db, alias);
  }
}

class AuditTeamTaskTable extends DataClass
    implements Insertable<AuditTeamTaskTable> {
  final int auditTeamMappingId;
  AuditTeamTaskTable({required this.auditTeamMappingId});
  factory AuditTeamTaskTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditTeamTaskTable(
      auditTeamMappingId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_team_mapping_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_team_mapping_id'] = Variable<int>(auditTeamMappingId);
    return map;
  }

  AuditTeamTaskTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditTeamTaskTablesCompanion(
      auditTeamMappingId: Value(auditTeamMappingId),
    );
  }

  factory AuditTeamTaskTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditTeamTaskTable(
      auditTeamMappingId: serializer.fromJson<int>(json['auditTeamMappingId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditTeamMappingId': serializer.toJson<int>(auditTeamMappingId),
    };
  }

  AuditTeamTaskTable copyWith({int? auditTeamMappingId}) => AuditTeamTaskTable(
        auditTeamMappingId: auditTeamMappingId ?? this.auditTeamMappingId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditTeamTaskTable(')
          ..write('auditTeamMappingId: $auditTeamMappingId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditTeamMappingId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditTeamTaskTable &&
          other.auditTeamMappingId == this.auditTeamMappingId);
}

class AuditTeamTaskTablesCompanion extends UpdateCompanion<AuditTeamTaskTable> {
  final Value<int> auditTeamMappingId;
  const AuditTeamTaskTablesCompanion({
    this.auditTeamMappingId = const Value.absent(),
  });
  AuditTeamTaskTablesCompanion.insert({
    this.auditTeamMappingId = const Value.absent(),
  });
  static Insertable<AuditTeamTaskTable> custom({
    Expression<int>? auditTeamMappingId,
  }) {
    return RawValuesInsertable({
      if (auditTeamMappingId != null)
        'audit_team_mapping_id': auditTeamMappingId,
    });
  }

  AuditTeamTaskTablesCompanion copyWith({Value<int>? auditTeamMappingId}) {
    return AuditTeamTaskTablesCompanion(
      auditTeamMappingId: auditTeamMappingId ?? this.auditTeamMappingId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditTeamMappingId.present) {
      map['audit_team_mapping_id'] = Variable<int>(auditTeamMappingId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditTeamTaskTablesCompanion(')
          ..write('auditTeamMappingId: $auditTeamMappingId')
          ..write(')'))
        .toString();
  }
}

class $AuditTeamTaskTablesTable extends AuditTeamTaskTables
    with TableInfo<$AuditTeamTaskTablesTable, AuditTeamTaskTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditTeamTaskTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditTeamMappingIdMeta =
      const VerificationMeta('auditTeamMappingId');
  late final GeneratedColumn<int?> auditTeamMappingId = GeneratedColumn<int?>(
      'audit_team_mapping_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditTeamMappingId];
  @override
  String get aliasedName => _alias ?? 'audit_team_task_tables';
  @override
  String get actualTableName => 'audit_team_task_tables';
  @override
  VerificationContext validateIntegrity(Insertable<AuditTeamTaskTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_team_mapping_id')) {
      context.handle(
          _auditTeamMappingIdMeta,
          auditTeamMappingId.isAcceptableOrUnknown(
              data['audit_team_mapping_id']!, _auditTeamMappingIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditTeamMappingId};
  @override
  AuditTeamTaskTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditTeamTaskTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditTeamTaskTablesTable createAlias(String alias) {
    return $AuditTeamTaskTablesTable(_db, alias);
  }
}

class TeamDetailsTable extends DataClass
    implements Insertable<TeamDetailsTable> {
  final int teamId;
  TeamDetailsTable({required this.teamId});
  factory TeamDetailsTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TeamDetailsTable(
      teamId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}team_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['team_id'] = Variable<int>(teamId);
    return map;
  }

  TeamDetailsTablesCompanion toCompanion(bool nullToAbsent) {
    return TeamDetailsTablesCompanion(
      teamId: Value(teamId),
    );
  }

  factory TeamDetailsTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TeamDetailsTable(
      teamId: serializer.fromJson<int>(json['teamId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'teamId': serializer.toJson<int>(teamId),
    };
  }

  TeamDetailsTable copyWith({int? teamId}) => TeamDetailsTable(
        teamId: teamId ?? this.teamId,
      );
  @override
  String toString() {
    return (StringBuffer('TeamDetailsTable(')
          ..write('teamId: $teamId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => teamId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeamDetailsTable && other.teamId == this.teamId);
}

class TeamDetailsTablesCompanion extends UpdateCompanion<TeamDetailsTable> {
  final Value<int> teamId;
  const TeamDetailsTablesCompanion({
    this.teamId = const Value.absent(),
  });
  TeamDetailsTablesCompanion.insert({
    this.teamId = const Value.absent(),
  });
  static Insertable<TeamDetailsTable> custom({
    Expression<int>? teamId,
  }) {
    return RawValuesInsertable({
      if (teamId != null) 'team_id': teamId,
    });
  }

  TeamDetailsTablesCompanion copyWith({Value<int>? teamId}) {
    return TeamDetailsTablesCompanion(
      teamId: teamId ?? this.teamId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (teamId.present) {
      map['team_id'] = Variable<int>(teamId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeamDetailsTablesCompanion(')
          ..write('teamId: $teamId')
          ..write(')'))
        .toString();
  }
}

class $TeamDetailsTablesTable extends TeamDetailsTables
    with TableInfo<$TeamDetailsTablesTable, TeamDetailsTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TeamDetailsTablesTable(this._db, [this._alias]);
  final VerificationMeta _teamIdMeta = const VerificationMeta('teamId');
  late final GeneratedColumn<int?> teamId = GeneratedColumn<int?>(
      'team_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [teamId];
  @override
  String get aliasedName => _alias ?? 'team_details_tables';
  @override
  String get actualTableName => 'team_details_tables';
  @override
  VerificationContext validateIntegrity(Insertable<TeamDetailsTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('team_id')) {
      context.handle(_teamIdMeta,
          teamId.isAcceptableOrUnknown(data['team_id']!, _teamIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {teamId};
  @override
  TeamDetailsTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TeamDetailsTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TeamDetailsTablesTable createAlias(String alias) {
    return $TeamDetailsTablesTable(_db, alias);
  }
}

class UserDetailsTable extends DataClass
    implements Insertable<UserDetailsTable> {
  final int memberId;
  UserDetailsTable({required this.memberId});
  factory UserDetailsTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserDetailsTable(
      memberId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}member_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['member_id'] = Variable<int>(memberId);
    return map;
  }

  UserDetailsTablesCompanion toCompanion(bool nullToAbsent) {
    return UserDetailsTablesCompanion(
      memberId: Value(memberId),
    );
  }

  factory UserDetailsTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserDetailsTable(
      memberId: serializer.fromJson<int>(json['memberId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'memberId': serializer.toJson<int>(memberId),
    };
  }

  UserDetailsTable copyWith({int? memberId}) => UserDetailsTable(
        memberId: memberId ?? this.memberId,
      );
  @override
  String toString() {
    return (StringBuffer('UserDetailsTable(')
          ..write('memberId: $memberId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => memberId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDetailsTable && other.memberId == this.memberId);
}

class UserDetailsTablesCompanion extends UpdateCompanion<UserDetailsTable> {
  final Value<int> memberId;
  const UserDetailsTablesCompanion({
    this.memberId = const Value.absent(),
  });
  UserDetailsTablesCompanion.insert({
    this.memberId = const Value.absent(),
  });
  static Insertable<UserDetailsTable> custom({
    Expression<int>? memberId,
  }) {
    return RawValuesInsertable({
      if (memberId != null) 'member_id': memberId,
    });
  }

  UserDetailsTablesCompanion copyWith({Value<int>? memberId}) {
    return UserDetailsTablesCompanion(
      memberId: memberId ?? this.memberId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (memberId.present) {
      map['member_id'] = Variable<int>(memberId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDetailsTablesCompanion(')
          ..write('memberId: $memberId')
          ..write(')'))
        .toString();
  }
}

class $UserDetailsTablesTable extends UserDetailsTables
    with TableInfo<$UserDetailsTablesTable, UserDetailsTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UserDetailsTablesTable(this._db, [this._alias]);
  final VerificationMeta _memberIdMeta = const VerificationMeta('memberId');
  late final GeneratedColumn<int?> memberId = GeneratedColumn<int?>(
      'member_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [memberId];
  @override
  String get aliasedName => _alias ?? 'user_details_tables';
  @override
  String get actualTableName => 'user_details_tables';
  @override
  VerificationContext validateIntegrity(Insertable<UserDetailsTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('member_id')) {
      context.handle(_memberIdMeta,
          memberId.isAcceptableOrUnknown(data['member_id']!, _memberIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {memberId};
  @override
  UserDetailsTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserDetailsTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserDetailsTablesTable createAlias(String alias) {
    return $UserDetailsTablesTable(_db, alias);
  }
}

class UserPermissionTable extends DataClass
    implements Insertable<UserPermissionTable> {
  final bool userTaskPermission;
  UserPermissionTable({required this.userTaskPermission});
  factory UserPermissionTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserPermissionTable(
      userTaskPermission: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_task_permission'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_task_permission'] = Variable<bool>(userTaskPermission);
    return map;
  }

  UserPermissionTablesCompanion toCompanion(bool nullToAbsent) {
    return UserPermissionTablesCompanion(
      userTaskPermission: Value(userTaskPermission),
    );
  }

  factory UserPermissionTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserPermissionTable(
      userTaskPermission: serializer.fromJson<bool>(json['userTaskPermission']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userTaskPermission': serializer.toJson<bool>(userTaskPermission),
    };
  }

  UserPermissionTable copyWith({bool? userTaskPermission}) =>
      UserPermissionTable(
        userTaskPermission: userTaskPermission ?? this.userTaskPermission,
      );
  @override
  String toString() {
    return (StringBuffer('UserPermissionTable(')
          ..write('userTaskPermission: $userTaskPermission')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => userTaskPermission.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserPermissionTable &&
          other.userTaskPermission == this.userTaskPermission);
}

class UserPermissionTablesCompanion
    extends UpdateCompanion<UserPermissionTable> {
  final Value<bool> userTaskPermission;
  const UserPermissionTablesCompanion({
    this.userTaskPermission = const Value.absent(),
  });
  UserPermissionTablesCompanion.insert({
    required bool userTaskPermission,
  }) : userTaskPermission = Value(userTaskPermission);
  static Insertable<UserPermissionTable> custom({
    Expression<bool>? userTaskPermission,
  }) {
    return RawValuesInsertable({
      if (userTaskPermission != null)
        'user_task_permission': userTaskPermission,
    });
  }

  UserPermissionTablesCompanion copyWith({Value<bool>? userTaskPermission}) {
    return UserPermissionTablesCompanion(
      userTaskPermission: userTaskPermission ?? this.userTaskPermission,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userTaskPermission.present) {
      map['user_task_permission'] = Variable<bool>(userTaskPermission.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserPermissionTablesCompanion(')
          ..write('userTaskPermission: $userTaskPermission')
          ..write(')'))
        .toString();
  }
}

class $UserPermissionTablesTable extends UserPermissionTables
    with TableInfo<$UserPermissionTablesTable, UserPermissionTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UserPermissionTablesTable(this._db, [this._alias]);
  final VerificationMeta _userTaskPermissionMeta =
      const VerificationMeta('userTaskPermission');
  late final GeneratedColumn<bool?> userTaskPermission = GeneratedColumn<bool?>(
      'user_task_permission', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (user_task_permission IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns => [userTaskPermission];
  @override
  String get aliasedName => _alias ?? 'user_permission_tables';
  @override
  String get actualTableName => 'user_permission_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<UserPermissionTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_task_permission')) {
      context.handle(
          _userTaskPermissionMeta,
          userTaskPermission.isAcceptableOrUnknown(
              data['user_task_permission']!, _userTaskPermissionMeta));
    } else if (isInserting) {
      context.missing(_userTaskPermissionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  UserPermissionTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserPermissionTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserPermissionTablesTable createAlias(String alias) {
    return $UserPermissionTablesTable(_db, alias);
  }
}

class OccurrenceScheduleDatesTable extends DataClass
    implements Insertable<OccurrenceScheduleDatesTable> {
  final int occurrenceScheduleDateId;
  OccurrenceScheduleDatesTable({required this.occurrenceScheduleDateId});
  factory OccurrenceScheduleDatesTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OccurrenceScheduleDatesTable(
      occurrenceScheduleDateId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}occurrence_schedule_date_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['occurrence_schedule_date_id'] =
        Variable<int>(occurrenceScheduleDateId);
    return map;
  }

  OccurrenceScheduleDatesTablesCompanion toCompanion(bool nullToAbsent) {
    return OccurrenceScheduleDatesTablesCompanion(
      occurrenceScheduleDateId: Value(occurrenceScheduleDateId),
    );
  }

  factory OccurrenceScheduleDatesTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return OccurrenceScheduleDatesTable(
      occurrenceScheduleDateId:
          serializer.fromJson<int>(json['occurrenceScheduleDateId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'occurrenceScheduleDateId':
          serializer.toJson<int>(occurrenceScheduleDateId),
    };
  }

  OccurrenceScheduleDatesTable copyWith({int? occurrenceScheduleDateId}) =>
      OccurrenceScheduleDatesTable(
        occurrenceScheduleDateId:
            occurrenceScheduleDateId ?? this.occurrenceScheduleDateId,
      );
  @override
  String toString() {
    return (StringBuffer('OccurrenceScheduleDatesTable(')
          ..write('occurrenceScheduleDateId: $occurrenceScheduleDateId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => occurrenceScheduleDateId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OccurrenceScheduleDatesTable &&
          other.occurrenceScheduleDateId == this.occurrenceScheduleDateId);
}

class OccurrenceScheduleDatesTablesCompanion
    extends UpdateCompanion<OccurrenceScheduleDatesTable> {
  final Value<int> occurrenceScheduleDateId;
  const OccurrenceScheduleDatesTablesCompanion({
    this.occurrenceScheduleDateId = const Value.absent(),
  });
  OccurrenceScheduleDatesTablesCompanion.insert({
    this.occurrenceScheduleDateId = const Value.absent(),
  });
  static Insertable<OccurrenceScheduleDatesTable> custom({
    Expression<int>? occurrenceScheduleDateId,
  }) {
    return RawValuesInsertable({
      if (occurrenceScheduleDateId != null)
        'occurrence_schedule_date_id': occurrenceScheduleDateId,
    });
  }

  OccurrenceScheduleDatesTablesCompanion copyWith(
      {Value<int>? occurrenceScheduleDateId}) {
    return OccurrenceScheduleDatesTablesCompanion(
      occurrenceScheduleDateId:
          occurrenceScheduleDateId ?? this.occurrenceScheduleDateId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (occurrenceScheduleDateId.present) {
      map['occurrence_schedule_date_id'] =
          Variable<int>(occurrenceScheduleDateId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OccurrenceScheduleDatesTablesCompanion(')
          ..write('occurrenceScheduleDateId: $occurrenceScheduleDateId')
          ..write(')'))
        .toString();
  }
}

class $OccurrenceScheduleDatesTablesTable extends OccurrenceScheduleDatesTables
    with
        TableInfo<$OccurrenceScheduleDatesTablesTable,
            OccurrenceScheduleDatesTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $OccurrenceScheduleDatesTablesTable(this._db, [this._alias]);
  final VerificationMeta _occurrenceScheduleDateIdMeta =
      const VerificationMeta('occurrenceScheduleDateId');
  late final GeneratedColumn<int?> occurrenceScheduleDateId =
      GeneratedColumn<int?>('occurrence_schedule_date_id', aliasedName, false,
          typeName: 'INTEGER',
          requiredDuringInsert: false,
          defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [occurrenceScheduleDateId];
  @override
  String get aliasedName => _alias ?? 'occurrence_schedule_dates_tables';
  @override
  String get actualTableName => 'occurrence_schedule_dates_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<OccurrenceScheduleDatesTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('occurrence_schedule_date_id')) {
      context.handle(
          _occurrenceScheduleDateIdMeta,
          occurrenceScheduleDateId.isAcceptableOrUnknown(
              data['occurrence_schedule_date_id']!,
              _occurrenceScheduleDateIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {occurrenceScheduleDateId};
  @override
  OccurrenceScheduleDatesTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return OccurrenceScheduleDatesTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OccurrenceScheduleDatesTablesTable createAlias(String alias) {
    return $OccurrenceScheduleDatesTablesTable(_db, alias);
  }
}

class AuditEnforceTimeDataTable extends DataClass
    implements Insertable<AuditEnforceTimeDataTable> {
  final int enforceTimeId;
  AuditEnforceTimeDataTable({required this.enforceTimeId});
  factory AuditEnforceTimeDataTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditEnforceTimeDataTable(
      enforceTimeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}enforce_time_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['enforce_time_id'] = Variable<int>(enforceTimeId);
    return map;
  }

  AuditEnforceTimeDataTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditEnforceTimeDataTablesCompanion(
      enforceTimeId: Value(enforceTimeId),
    );
  }

  factory AuditEnforceTimeDataTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditEnforceTimeDataTable(
      enforceTimeId: serializer.fromJson<int>(json['enforceTimeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'enforceTimeId': serializer.toJson<int>(enforceTimeId),
    };
  }

  AuditEnforceTimeDataTable copyWith({int? enforceTimeId}) =>
      AuditEnforceTimeDataTable(
        enforceTimeId: enforceTimeId ?? this.enforceTimeId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditEnforceTimeDataTable(')
          ..write('enforceTimeId: $enforceTimeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => enforceTimeId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditEnforceTimeDataTable &&
          other.enforceTimeId == this.enforceTimeId);
}

class AuditEnforceTimeDataTablesCompanion
    extends UpdateCompanion<AuditEnforceTimeDataTable> {
  final Value<int> enforceTimeId;
  const AuditEnforceTimeDataTablesCompanion({
    this.enforceTimeId = const Value.absent(),
  });
  AuditEnforceTimeDataTablesCompanion.insert({
    this.enforceTimeId = const Value.absent(),
  });
  static Insertable<AuditEnforceTimeDataTable> custom({
    Expression<int>? enforceTimeId,
  }) {
    return RawValuesInsertable({
      if (enforceTimeId != null) 'enforce_time_id': enforceTimeId,
    });
  }

  AuditEnforceTimeDataTablesCompanion copyWith({Value<int>? enforceTimeId}) {
    return AuditEnforceTimeDataTablesCompanion(
      enforceTimeId: enforceTimeId ?? this.enforceTimeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (enforceTimeId.present) {
      map['enforce_time_id'] = Variable<int>(enforceTimeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditEnforceTimeDataTablesCompanion(')
          ..write('enforceTimeId: $enforceTimeId')
          ..write(')'))
        .toString();
  }
}

class $AuditEnforceTimeDataTablesTable extends AuditEnforceTimeDataTables
    with
        TableInfo<$AuditEnforceTimeDataTablesTable, AuditEnforceTimeDataTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditEnforceTimeDataTablesTable(this._db, [this._alias]);
  final VerificationMeta _enforceTimeIdMeta =
      const VerificationMeta('enforceTimeId');
  late final GeneratedColumn<int?> enforceTimeId = GeneratedColumn<int?>(
      'enforce_time_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [enforceTimeId];
  @override
  String get aliasedName => _alias ?? 'audit_enforce_time_data_tables';
  @override
  String get actualTableName => 'audit_enforce_time_data_tables';
  @override
  VerificationContext validateIntegrity(
      Insertable<AuditEnforceTimeDataTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('enforce_time_id')) {
      context.handle(
          _enforceTimeIdMeta,
          enforceTimeId.isAcceptableOrUnknown(
              data['enforce_time_id']!, _enforceTimeIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {enforceTimeId};
  @override
  AuditEnforceTimeDataTable map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return AuditEnforceTimeDataTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditEnforceTimeDataTablesTable createAlias(String alias) {
    return $AuditEnforceTimeDataTablesTable(_db, alias);
  }
}

class AuditGroupsTable extends DataClass
    implements Insertable<AuditGroupsTable> {
  final int auditGroupId;
  AuditGroupsTable({required this.auditGroupId});
  factory AuditGroupsTable.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AuditGroupsTable(
      auditGroupId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_group_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['audit_group_id'] = Variable<int>(auditGroupId);
    return map;
  }

  AuditGroupsTablesCompanion toCompanion(bool nullToAbsent) {
    return AuditGroupsTablesCompanion(
      auditGroupId: Value(auditGroupId),
    );
  }

  factory AuditGroupsTable.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AuditGroupsTable(
      auditGroupId: serializer.fromJson<int>(json['auditGroupId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auditGroupId': serializer.toJson<int>(auditGroupId),
    };
  }

  AuditGroupsTable copyWith({int? auditGroupId}) => AuditGroupsTable(
        auditGroupId: auditGroupId ?? this.auditGroupId,
      );
  @override
  String toString() {
    return (StringBuffer('AuditGroupsTable(')
          ..write('auditGroupId: $auditGroupId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => auditGroupId.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuditGroupsTable && other.auditGroupId == this.auditGroupId);
}

class AuditGroupsTablesCompanion extends UpdateCompanion<AuditGroupsTable> {
  final Value<int> auditGroupId;
  const AuditGroupsTablesCompanion({
    this.auditGroupId = const Value.absent(),
  });
  AuditGroupsTablesCompanion.insert({
    this.auditGroupId = const Value.absent(),
  });
  static Insertable<AuditGroupsTable> custom({
    Expression<int>? auditGroupId,
  }) {
    return RawValuesInsertable({
      if (auditGroupId != null) 'audit_group_id': auditGroupId,
    });
  }

  AuditGroupsTablesCompanion copyWith({Value<int>? auditGroupId}) {
    return AuditGroupsTablesCompanion(
      auditGroupId: auditGroupId ?? this.auditGroupId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (auditGroupId.present) {
      map['audit_group_id'] = Variable<int>(auditGroupId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuditGroupsTablesCompanion(')
          ..write('auditGroupId: $auditGroupId')
          ..write(')'))
        .toString();
  }
}

class $AuditGroupsTablesTable extends AuditGroupsTables
    with TableInfo<$AuditGroupsTablesTable, AuditGroupsTable> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AuditGroupsTablesTable(this._db, [this._alias]);
  final VerificationMeta _auditGroupIdMeta =
      const VerificationMeta('auditGroupId');
  late final GeneratedColumn<int?> auditGroupId = GeneratedColumn<int?>(
      'audit_group_id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [auditGroupId];
  @override
  String get aliasedName => _alias ?? 'audit_groups_tables';
  @override
  String get actualTableName => 'audit_groups_tables';
  @override
  VerificationContext validateIntegrity(Insertable<AuditGroupsTable> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('audit_group_id')) {
      context.handle(
          _auditGroupIdMeta,
          auditGroupId.isAcceptableOrUnknown(
              data['audit_group_id']!, _auditGroupIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditGroupId};
  @override
  AuditGroupsTable map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AuditGroupsTable.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AuditGroupsTablesTable createAlias(String alias) {
    return $AuditGroupsTablesTable(_db, alias);
  }
}

abstract class _$AuditDatabase extends GeneratedDatabase {
  _$AuditDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $AuditDetailsTablesTable auditDetailsTables =
      $AuditDetailsTablesTable(this);
  late final $ScoringTypesTablesTable scoringTypesTables =
      $ScoringTypesTablesTable(this);
  late final $ScoringFormulaInfoTablesTable scoringFormulaInfoTables =
      $ScoringFormulaInfoTablesTable(this);
  late final $AuditScoringTablesTable auditScoringTables =
      $AuditScoringTablesTable(this);
  late final $AuditEntityTablesTable auditEntityTables =
      $AuditEntityTablesTable(this);
  late final $AuditQuestionTablesTable auditQuestionTables =
      $AuditQuestionTablesTable(this);
  late final $AuditEntityTypesTablesTable auditEntityTypesTables =
      $AuditEntityTypesTablesTable(this);
  late final $AuditEntityTypeQuestionsTablesTable
      auditEntityTypeQuestionsTables =
      $AuditEntityTypeQuestionsTablesTable(this);
  late final $AuditCorrectiveActionsTablesTable auditCorrectiveActionsTables =
      $AuditCorrectiveActionsTablesTable(this);
  late final $AuditFailureReasonTablesTable auditFailureReasonTables =
      $AuditFailureReasonTablesTable(this);
  late final $AuditAdditionalFieldsTablesTable auditAdditionalFieldsTables =
      $AuditAdditionalFieldsTablesTable(this);
  late final $AuditAdditionalFieldTypeValuesTablesTable
      auditAdditionalFieldTypeValuesTables =
      $AuditAdditionalFieldTypeValuesTablesTable(this);
  late final $AuditAdditionalFieldEntityTypesTablesTable
      auditAdditionalFieldEntityTypesTables =
      $AuditAdditionalFieldEntityTypesTablesTable(this);
  late final $SizeTablesTable sizeTables = $SizeTablesTable(this);
  late final $AuditTeamTaskTablesTable auditTeamTaskTables =
      $AuditTeamTaskTablesTable(this);
  late final $TeamDetailsTablesTable teamDetailsTables =
      $TeamDetailsTablesTable(this);
  late final $UserDetailsTablesTable userDetailsTables =
      $UserDetailsTablesTable(this);
  late final $UserPermissionTablesTable userPermissionTables =
      $UserPermissionTablesTable(this);
  late final $OccurrenceScheduleDatesTablesTable occurrenceScheduleDatesTables =
      $OccurrenceScheduleDatesTablesTable(this);
  late final $AuditEnforceTimeDataTablesTable auditEnforceTimeDataTables =
      $AuditEnforceTimeDataTablesTable(this);
  late final $AuditGroupsTablesTable auditGroupsTables =
      $AuditGroupsTablesTable(this);
  Selectable<CountGeneralResult> countGeneral() {
    return customSelect(
        'SELECT (SELECT COUNT(*) FROM auditDetailsTables) AS countAuditDetails,\r\n  (SELECT COUNT(*) FROM scoringTypesTables) AS countScoringTypes,\r\n  (SELECT COUNT(*) FROM scoringFormulaInfoTables) AS countScoringFormulaInfo,\r\n  (SELECT COUNT(*) FROM auditScoringTables) AS countAuditScoring,\r\n  (SELECT COUNT(*) FROM auditEntityTables) AS countAuditEntity,\r\n  (SELECT COUNT(*) FROM auditQuestionTables) AS countAuditQuestion,\r\n  (SELECT COUNT(*) FROM auditEntityTypesTables) AS countAuditEntityTypes,\r\n  (SELECT COUNT(*) FROM auditEntityTypeQuestionsTables) AS countAuditEntityTypeQuestions,\r\n  (SELECT COUNT(*) FROM auditCorrectiveActionsTables) AS countAuditCorrectiveActions,\r\n  (SELECT COUNT(*) FROM auditFailureReasonTables) AS countAuditFailureReason,\r\n  (SELECT COUNT(*) FROM auditAdditionalFieldsTables) AS countAuditAdditionalFields,\r\n  (SELECT COUNT(*) FROM auditAdditionalFieldTypeValuesTables) AS countAuditAdditionalFieldTypeValues,\r\n  (SELECT COUNT(*) FROM auditAdditionalFieldEntityTypesTables) AS countAuditAdditionalFieldEntityTypes,\r\n  (SELECT COUNT(*) FROM sizeTables) AS countSize,\r\n  (SELECT COUNT(*) FROM auditTeamTaskTables) AS countAuditTeamTask,\r\n  (SELECT COUNT(*) FROM teamDetailsTables) AS countTeamDetails,\r\n  (SELECT COUNT(*) FROM userDetailsTables) AS countUserDetails,\r\n  (SELECT COUNT(*) FROM userPermissionTables) AS countUserPermission,\r\n  (SELECT COUNT(*) FROM occurrenceScheduleDatesTables) AS countOccurrenceScheduleDates,\r\n  (SELECT COUNT(*) FROM auditEnforceTimeDataTables) AS countAuditEnforceTimeData,\r\n  (SELECT COUNT(*) FROM auditGroupsTables) AS countAuditGroups',
        variables: [],
        readsFrom: {}).map((QueryRow row) {
      return CountGeneralResult(
        countAuditDetails: row.read<int>('countAuditDetails'),
        countScoringTypes: row.read<int>('countScoringTypes'),
        countScoringFormulaInfo: row.read<int>('countScoringFormulaInfo'),
        countAuditScoring: row.read<int>('countAuditScoring'),
        countAuditEntity: row.read<int>('countAuditEntity'),
        countAuditQuestion: row.read<int>('countAuditQuestion'),
        countAuditEntityTypes: row.read<int>('countAuditEntityTypes'),
        countAuditEntityTypeQuestions:
            row.read<int>('countAuditEntityTypeQuestions'),
        countAuditCorrectiveActions:
            row.read<int>('countAuditCorrectiveActions'),
        countAuditFailureReason: row.read<int>('countAuditFailureReason'),
        countAuditAdditionalFields: row.read<int>('countAuditAdditionalFields'),
        countAuditAdditionalFieldTypeValues:
            row.read<int>('countAuditAdditionalFieldTypeValues'),
        countAuditAdditionalFieldEntityTypes:
            row.read<int>('countAuditAdditionalFieldEntityTypes'),
        countSize: row.read<int>('countSize'),
        countAuditTeamTask: row.read<int>('countAuditTeamTask'),
        countTeamDetails: row.read<int>('countTeamDetails'),
        countUserDetails: row.read<int>('countUserDetails'),
        countUserPermission: row.read<int>('countUserPermission'),
        countOccurrenceScheduleDates:
            row.read<int>('countOccurrenceScheduleDates'),
        countAuditEnforceTimeData: row.read<int>('countAuditEnforceTimeData'),
        countAuditGroups: row.read<int>('countAuditGroups'),
      );
    });
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        auditDetailsTables,
        scoringTypesTables,
        scoringFormulaInfoTables,
        auditScoringTables,
        auditEntityTables,
        auditQuestionTables,
        auditEntityTypesTables,
        auditEntityTypeQuestionsTables,
        auditCorrectiveActionsTables,
        auditFailureReasonTables,
        auditAdditionalFieldsTables,
        auditAdditionalFieldTypeValuesTables,
        auditAdditionalFieldEntityTypesTables,
        sizeTables,
        auditTeamTaskTables,
        teamDetailsTables,
        userDetailsTables,
        userPermissionTables,
        occurrenceScheduleDatesTables,
        auditEnforceTimeDataTables,
        auditGroupsTables
      ];
}

class CountGeneralResult {
  final int countAuditDetails;
  final int countScoringTypes;
  final int countScoringFormulaInfo;
  final int countAuditScoring;
  final int countAuditEntity;
  final int countAuditQuestion;
  final int countAuditEntityTypes;
  final int countAuditEntityTypeQuestions;
  final int countAuditCorrectiveActions;
  final int countAuditFailureReason;
  final int countAuditAdditionalFields;
  final int countAuditAdditionalFieldTypeValues;
  final int countAuditAdditionalFieldEntityTypes;
  final int countSize;
  final int countAuditTeamTask;
  final int countTeamDetails;
  final int countUserDetails;
  final int countUserPermission;
  final int countOccurrenceScheduleDates;
  final int countAuditEnforceTimeData;
  final int countAuditGroups;
  CountGeneralResult({
    required this.countAuditDetails,
    required this.countScoringTypes,
    required this.countScoringFormulaInfo,
    required this.countAuditScoring,
    required this.countAuditEntity,
    required this.countAuditQuestion,
    required this.countAuditEntityTypes,
    required this.countAuditEntityTypeQuestions,
    required this.countAuditCorrectiveActions,
    required this.countAuditFailureReason,
    required this.countAuditAdditionalFields,
    required this.countAuditAdditionalFieldTypeValues,
    required this.countAuditAdditionalFieldEntityTypes,
    required this.countSize,
    required this.countAuditTeamTask,
    required this.countTeamDetails,
    required this.countUserDetails,
    required this.countUserPermission,
    required this.countOccurrenceScheduleDates,
    required this.countAuditEnforceTimeData,
    required this.countAuditGroups,
  });
}
