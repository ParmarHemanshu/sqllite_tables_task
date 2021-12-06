import 'package:sqllite_tables_task/feature/operations_on_audit_json/data/data_sources/audit_data_source.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/domain/repositories/audit_entity_repository.dart';

class AuditEntityRepositoryImpl extends AuditEntityRepository {
  final AuditTableDataSource auditTableDataSource;
  AuditEntityRepositoryImpl({required this.auditTableDataSource});

  @override
  Future<List<List<dynamic>>>  getAllTableCount() async{
    return  await auditTableDataSource.getAllTablesCount();
  }

  @override
  Future<void> getJsonAndInsertIntoAuditTables() async{
    return await auditTableDataSource.addAllJsonDataIntoDb();}

}