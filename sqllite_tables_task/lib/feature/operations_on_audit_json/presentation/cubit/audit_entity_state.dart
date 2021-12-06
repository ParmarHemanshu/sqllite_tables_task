part of 'audit_entity_cubit.dart';

abstract class AuditEntityState extends Equatable {
  const AuditEntityState();
}

class AuditEntityInitial extends AuditEntityState {
  @override
  List<Object> get props => [];
}

class AuditEntityLoading extends AuditEntityState {
  @override
  List<Object> get props => [];
}

class AuditEntityLoaded extends AuditEntityState {
  final List<List<dynamic>> listGeneralCount;

  const AuditEntityLoaded(this.listGeneralCount);

  @override
  List<Object> get props => [];
}

class AuditEntityFailure extends AuditEntityState {
  final String errorMsg;

  const AuditEntityFailure({required this.errorMsg});

  @override
  List<Object> get props => [];
}
