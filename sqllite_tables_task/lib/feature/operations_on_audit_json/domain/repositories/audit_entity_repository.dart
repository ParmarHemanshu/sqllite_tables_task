
abstract class AuditEntityRepository {
  Future<List<List<dynamic>>>  getAllTableCount();
  Future<void> getJsonAndInsertIntoAuditTables();
}
