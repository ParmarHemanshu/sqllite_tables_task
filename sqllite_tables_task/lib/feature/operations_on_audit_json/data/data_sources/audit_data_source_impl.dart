import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/data/data_sources/audit_data_source.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/data/data_sources/moor/database/audit_tables_database.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/data/models/audit_entity_model.dart';

class AuditTableDataSourceImpl implements AuditTableDataSource {
  final AuditDatabase auditDatabase;

  AuditTableDataSourceImpl({required this.auditDatabase});


  @override
  Future<List<List<dynamic>>> getAllTablesCount() async {
    var result = await auditDatabase.getAllTableCount();
    final List<List<dynamic>> data = [
      ["auditDetailsList", result.countAuditDetails],
      ["scoringTypes", result.countScoringTypes],
      ["scoringFormulaInfoModel", result.countScoringFormulaInfo],
      ["auditScoring", result.countAuditScoring],
      ["auditEntity", result.countAuditEntity],
      ["auditQuestion", result.countAuditQuestion],
      ["auditEntityTypes", result.countAuditEntityTypes],
      ["auditEntityTypeQuestions", result.countAuditEntityTypeQuestions],
      ["auditCorrectiveActions", result.countAuditCorrectiveActions],
      ["auditFailureReason", result.countAuditFailureReason],
      ["auditAdditionalFields", result.countAuditAdditionalFields],
      [
        "auditAdditionalFieldTypeValues",
        result.countAuditAdditionalFieldTypeValues
      ],
      [
        "auditAdditionalFieldEntityTypes",
        result.countAuditAdditionalFieldEntityTypes
      ],
      ["size", result.countSize],
      ["auditTeamTask", result.countAuditTeamTask],
      ["teamDetails", result.countTeamDetails],
      ["userDetails", result.countUserDetails],
      ["userPermission", result.countUserPermission],
      ["occurrenceScheduleDates", result.countOccurrenceScheduleDates],
      ["auditEnforceTimeData", result.countAuditEnforceTimeData],
      ["auditGroups", result.countAuditGroups]
    ];
    return data;

  }

  @override
  Future<void> addAllJsonDataIntoDb() async {
    final jsonData = await rootBundle.loadString("assets/audit.json");
    final Map<String, dynamic> map = json.decode(jsonData);
    final convertedToModel = AuditEntityModel.fromJson(map);


    convertedToModel.auditDetailsList.forEach((element) async {
      final data = AuditDetailsTable(auditId: element.auditId);
      await auditDatabase.insertAuditDetail(data);
    });

    convertedToModel.scoringTypes.forEach((element) async {
      final data = ScoringTypesTable(scoringTypeId: element.scoringTypeId);
      await auditDatabase.insertScoringTypes(data);
    });

    convertedToModel.scoringFormulaInfoModel.forEach((element) async {
      final data = ScoringFormulaInfoTable(
          scoringFormulaDetailId: element.scoringFormulaDetailId);
      await auditDatabase.insertScoringFormulaInfo(data);
    });

    convertedToModel.auditScoring.forEach((element) async {
      final data = AuditScoringTable(auditScoringId: element.auditScoringId);
      await auditDatabase.insertAuditScoring(data);
    });

    convertedToModel.auditEntity.forEach((element) async {
      final data = AuditEntityTable(auditEntityId: element.auditEntityId);
      await auditDatabase.insertAuditEntity(data);
    });

    convertedToModel.auditQuestion.forEach((element) async {
      final data = AuditQuestionTable(auditQuestionId: element.auditQuestionId);
      await auditDatabase.insertAuditQuestion(data);
    });

    convertedToModel.auditEntityTypes.forEach((element) async {
      final data =
      AuditEntityTypesTable(auditEntityTypeId: element.auditEntityTypeId);
      await auditDatabase.insertAuditEntityTypes(data);
    });

    convertedToModel.auditEntityTypeQuestions.forEach((element) async {
      final data = AuditEntityTypeQuestionsTable(
          auditEntityTypeQuestionId: element.auditEntityTypeQuestionId);
      await auditDatabase.insertAuditEntityTypeQuestions(data);
    });

    convertedToModel.auditCorrectiveActions.forEach((element) async {
      final data = AuditCorrectiveActionsTable(
          auditCorrectiveActionId: element.auditCorrectiveActionId);
      await auditDatabase.insertAuditCorrectiveActions(data);
    });

    convertedToModel.auditFailureReason.forEach((element) async {
      final data = AuditFailureReasonTable(
          auditFailureReasonId: element.auditFailureReasonId);
      await auditDatabase.insertAuditFailureReason(data);
    });

    convertedToModel.auditAdditionalFields.forEach((element) async {
      final data = AuditAdditionalFieldsTable(
          additionalFieldId: element.additionalFieldId);
      await auditDatabase.insertAuditAdditionalFields(data);
    });

    convertedToModel.auditAdditionalFieldTypeValues.forEach((element) async {
      final data = AuditAdditionalFieldTypeValuesTable(
          additionalFieldTypeValueId: element.additionalFieldTypeValueId);
      await auditDatabase.insertAuditAdditionalFieldTypeValues(data);
    });

    convertedToModel.auditAdditionalFieldEntityTypes.forEach((element) async {
      final data = AuditAdditionalFieldEntityTypesTable(
          additionalFieldEntityTypeId: element.additionalFieldEntityTypeId);
      await auditDatabase.insertAuditAdditionalFieldEntityTypes(data);
    });

    convertedToModel.size.forEach((element) async {
      final data =
      SizeTable(androidMaxUploadFileSize: element.androidMaxUploadFileSize);
      await auditDatabase.insertSize(data);
    });

    convertedToModel.auditTeamTask.forEach((element) async {
      final data =
      AuditTeamTaskTable(auditTeamMappingId: element.auditTeamMappingId);
      await auditDatabase.insertAuditTeamTask(data);
    });

    convertedToModel.teamDetails.forEach((element) async {
      final data = TeamDetailsTable(teamId: element.teamId);
      await auditDatabase.insertTeamDetails(data);
    });

    convertedToModel.userDetails.forEach((element) async {
      final data = UserDetailsTable(memberId: element.memberId);
      await auditDatabase.insertUserDetails(data);
    });

    convertedToModel.userPermission.forEach((element) async {
      final data =
      UserPermissionTable(userTaskPermission: element.userTaskPermission);
      await auditDatabase.insertUserPermission(data);
    });

    convertedToModel.occurrenceScheduleDates.forEach((element) async {
      final data = OccurrenceScheduleDatesTable(
          occurrenceScheduleDateId: element.occurrenceScheduleDateId);
      await auditDatabase.insertOccurrenceScheduleDates(data);
    });

    convertedToModel.auditEnforceTimeData.forEach((element) async {
      final data =
      AuditEnforceTimeDataTable(enforceTimeId: element.enforceTimeId);
      await auditDatabase.insertAuditEnforceTimeData(data);
    });

    convertedToModel.auditGroups.forEach((element) async {
      final data = AuditGroupsTable(auditGroupId: element.auditGroupId);
      await auditDatabase.insertAuditGroups(data);
    });

}}
