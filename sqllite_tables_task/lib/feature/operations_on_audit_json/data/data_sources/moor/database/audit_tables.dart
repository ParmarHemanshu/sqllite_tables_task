
import 'package:moor_flutter/moor_flutter.dart';

class AuditDetailsTables extends Table {
  IntColumn get auditId => integer().autoIncrement()();
}
class ScoringTypesTables extends Table {
  IntColumn get scoringTypeId => integer().autoIncrement()();
}
class ScoringFormulaInfoTables extends Table {
  IntColumn get scoringFormulaDetailId => integer().autoIncrement()();
}
class AuditScoringTables extends Table {
  IntColumn get auditScoringId => integer().autoIncrement()();
}
class AuditEntityTables extends Table {
  IntColumn get auditEntityId => integer().autoIncrement()();
}
class AuditQuestionTables extends Table {
  IntColumn get auditQuestionId => integer().autoIncrement()();
}
class AuditEntityTypesTables extends Table {
  IntColumn get auditEntityTypeId => integer().autoIncrement()();
}
class AuditEntityTypeQuestionsTables extends Table {
  IntColumn get auditEntityTypeQuestionId => integer().autoIncrement()();
}
class AuditCorrectiveActionsTables extends Table {
  IntColumn get auditCorrectiveActionId => integer().autoIncrement()();
}

class AuditFailureReasonTables extends Table {
  IntColumn get auditFailureReasonId => integer().autoIncrement()();
}
class AuditAdditionalFieldsTables extends Table {
  IntColumn get additionalFieldId => integer().autoIncrement()();
}
class AuditAdditionalFieldTypeValuesTables extends Table {
  IntColumn get additionalFieldTypeValueId => integer().autoIncrement()();
}
class AuditAdditionalFieldEntityTypesTables extends Table {
  IntColumn get additionalFieldEntityTypeId => integer().autoIncrement()();
}
class SizeTables extends Table {
  IntColumn get androidMaxUploadFileSize => integer()();

}
class AuditTeamTaskTables extends Table {
  IntColumn get auditTeamMappingId => integer().autoIncrement()();
}
class TeamDetailsTables extends Table {
  IntColumn get teamId => integer().autoIncrement()();
}
class UserDetailsTables extends Table {
  IntColumn get memberId => integer().autoIncrement()();
}
class UserPermissionTables extends Table {
  BoolColumn get userTaskPermission => boolean()();
}
class OccurrenceScheduleDatesTables extends Table {
  IntColumn get occurrenceScheduleDateId => integer().autoIncrement()();
}
class AuditEnforceTimeDataTables extends Table {
  IntColumn get enforceTimeId => integer().autoIncrement()();
}
class AuditGroupsTables extends Table {
  IntColumn get auditGroupId => integer().autoIncrement()();
}