import 'package:moor_flutter/moor_flutter.dart';

import 'audit_tables.dart';

part 'audit_tables_database.g.dart';

const tableList = [
  AuditDetailsTables,
  ScoringTypesTables,
  ScoringFormulaInfoTables,
  AuditScoringTables,
  AuditEntityTables,
  AuditQuestionTables,
  AuditEntityTypesTables,
  AuditEntityTypeQuestionsTables,
  AuditCorrectiveActionsTables,
  AuditFailureReasonTables,
  AuditAdditionalFieldsTables,
  AuditAdditionalFieldTypeValuesTables,
  AuditAdditionalFieldEntityTypesTables,
  SizeTables,
  AuditTeamTaskTables,
  TeamDetailsTables,
  UserDetailsTables,
  UserPermissionTables,
  OccurrenceScheduleDatesTables,
  AuditEnforceTimeDataTables,
  AuditGroupsTables,
];

@UseMoor(tables: tableList, include: {'count_queries.moor'})
class AuditDatabase extends _$AuditDatabase {
  AuditDatabase()
      : super(
    FlutterQueryExecutor.inDatabaseFolder(
      path: "db.sqlite",
      logStatements: true,
      singleInstance: true,
    ),
  );

  @override
  int get schemaVersion => 1;

  Future insertAuditDetail(AuditDetailsTable auditDetail) =>
      into(auditDetailsTables).insert(auditDetail);

  Future insertScoringTypes(ScoringTypesTable scoringType) =>
      into(scoringTypesTables).insert(scoringType);

  Future insertScoringFormulaInfo(ScoringFormulaInfoTable scoringFormulaInfo) =>
      into(scoringFormulaInfoTables).insert(scoringFormulaInfo);

  Future insertAuditScoring(AuditScoringTable auditScoring) =>
      into(auditScoringTables).insert(auditScoring);

  Future insertAuditEntity(AuditEntityTable auditEntity) =>
      into(auditEntityTables).insert(auditEntity);

  Future insertAuditQuestion(AuditQuestionTable auditQuestion) =>
      into(auditQuestionTables).insert(auditQuestion);

  Future insertAuditEntityTypes(AuditEntityTypesTable auditEntityTypes) =>
      into(auditEntityTypesTables).insert(auditEntityTypes);

  Future insertAuditEntityTypeQuestions(
      AuditEntityTypeQuestionsTable auditEntityTypeQuestions) =>
      into(auditEntityTypeQuestionsTables).insert(auditEntityTypeQuestions);

  Future insertAuditCorrectiveActions(
      AuditCorrectiveActionsTable auditCorrectiveActions) =>
      into(auditCorrectiveActionsTables).insert(auditCorrectiveActions);

  Future insertAuditFailureReason(AuditFailureReasonTable auditFailureReason) =>
      into(auditFailureReasonTables).insert(auditFailureReason);

  Future insertAuditAdditionalFields(
      AuditAdditionalFieldsTable auditAdditionalFields) =>
      into(auditAdditionalFieldsTables).insert(auditAdditionalFields);

  Future insertAuditAdditionalFieldTypeValues(
      AuditAdditionalFieldTypeValuesTable auditAdditionalFieldTypeValues) =>
      into(auditAdditionalFieldTypeValuesTables)
          .insert(auditAdditionalFieldTypeValues);

  Future insertAuditAdditionalFieldEntityTypes(
      AuditAdditionalFieldEntityTypesTable
      auditAdditionalFieldEntityTypes) =>
      into(auditAdditionalFieldEntityTypesTables)
          .insert(auditAdditionalFieldEntityTypes);

  Future insertSize(SizeTable size) => into(sizeTables).insert(size);

  Future insertAuditTeamTask(AuditTeamTaskTable auditTeamTask) =>
      into(auditTeamTaskTables).insert(auditTeamTask);

  Future insertTeamDetails(TeamDetailsTable teamDetails) =>
      into(teamDetailsTables).insert(teamDetails);

  Future insertUserDetails(UserDetailsTable userDetails) =>
      into(userDetailsTables).insert(userDetails);

  Future insertUserPermission(UserPermissionTable userPermission) =>
      into(userPermissionTables).insert(userPermission);

  Future insertOccurrenceScheduleDates(
      OccurrenceScheduleDatesTable occurrenceScheduleDates) =>
      into(occurrenceScheduleDatesTables).insert(occurrenceScheduleDates);

  Future insertAuditEnforceTimeData(
      AuditEnforceTimeDataTable auditEnforceTimeData) =>
      into(auditEnforceTimeDataTables).insert(auditEnforceTimeData);

  Future insertAuditGroups(AuditGroupsTable auditGroups) =>
      into(auditGroupsTables).insert(auditGroups);

  Future<CountGeneralResult> getAllTableCount() => countGeneral().getSingle();
}
