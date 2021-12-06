import 'package:get_it/get_it.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/data/data_sources/audit_data_source.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/data/data_sources/audit_data_source_impl.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/data/data_sources/moor/database/audit_tables_database.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/domain/use_cases/get_all_counts_usecase.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/domain/use_cases/insert_json_into_tables_usecase.dart';
import 'feature/operations_on_audit_json/data/repositories/audit_entity_repository_impl.dart';
import 'feature/operations_on_audit_json/domain/repositories/audit_entity_repository.dart';
import 'feature/operations_on_audit_json/presentation/cubit/audit_entity_cubit.dart';
final sl = GetIt.instance;



Future<void> init() async {
  // cubit
  sl.registerFactory<AuditEntityCubit>(() => AuditEntityCubit(getAllTableCountUseCase: sl.call(), insertJsonIntoTablesUseCase: sl.call()));

  // database
  sl.registerLazySingleton<AuditDatabase>(() => AuditDatabase());

  //usecase
  sl.registerLazySingleton<GetAllTableCountUseCase>(
          () => GetAllTableCountUseCase(auditEntityRepository: sl.call()));

  //usecase
  sl.registerLazySingleton<InsertJsonIntoTablesUseCase>(() =>
      InsertJsonIntoTablesUseCase(auditEntityRepository: sl.call()));

  //repository
  sl.registerLazySingleton<AuditEntityRepository>(
          () => AuditEntityRepositoryImpl(auditTableDataSource: sl.call()));

  //datasource
  sl.registerLazySingleton<AuditTableDataSource>(
          () => AuditTableDataSourceImpl(auditDatabase: sl.call()));
}
