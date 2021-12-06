
abstract class AuditTableDataSource{
  Future<void> addAllJsonDataIntoDb();
  Future<List<List<dynamic>>> getAllTablesCount();

}