import 'package:sqllite_tables_task/feature/operations_on_audit_json/domain/repositories/audit_entity_repository.dart';

class InsertJsonIntoTablesUseCase {
  final AuditEntityRepository auditEntityRepository;

  InsertJsonIntoTablesUseCase({required this.auditEntityRepository});

  Future<void> call() async {
    return await auditEntityRepository.getJsonAndInsertIntoAuditTables();
  }
}