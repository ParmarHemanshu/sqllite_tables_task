import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/domain/use_cases/get_all_counts_usecase.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/domain/use_cases/insert_json_into_tables_usecase.dart';

part 'audit_entity_state.dart';

class AuditEntityCubit extends Cubit<AuditEntityState> {
  GetAllTableCountUseCase getAllTableCountUseCase;
  InsertJsonIntoTablesUseCase insertJsonIntoTablesUseCase;

  AuditEntityCubit({required this.getAllTableCountUseCase,
    required this.insertJsonIntoTablesUseCase})
      : super(AuditEntityInitial());

  getCountFromCubit() async {
    emit(AuditEntityLoading());
    try {

      var result = await getAllTableCountUseCase.call();
      if (result[0][1] == 0) {

        await insertJsonIntoTablesUseCase.call();
        result = await getAllTableCountUseCase.call();

      }
      emit(AuditEntityLoaded(result));
    }

    catch (e) {
      emit(const AuditEntityFailure(errorMsg: "Error while fetching data!!"));
    }

  }
}
