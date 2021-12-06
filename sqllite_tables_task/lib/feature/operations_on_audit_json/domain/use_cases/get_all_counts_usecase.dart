import 'package:sqllite_tables_task/feature/operations_on_audit_json/domain/repositories/audit_entity_repository.dart';

class GetAllTableCountUseCase {
 final AuditEntityRepository auditEntityRepository;

 GetAllTableCountUseCase({required this.auditEntityRepository});

 Future<List<List<dynamic>>> call() async {
    return await auditEntityRepository.getAllTableCount();
  }
}