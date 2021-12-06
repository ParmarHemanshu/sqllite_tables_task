import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqllite_tables_task/feature/operations_on_audit_json/presentation/cubit/audit_entity_cubit.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Audit Tables"),
      ),
      body: BlocBuilder<AuditEntityCubit, AuditEntityState>(
        builder: (context, state) {
          if (state is AuditEntityInitial) {
            BlocProvider.of<AuditEntityCubit>(context).getCountFromCubit();
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.blueAccent,
              strokeWidth: 5,
            ));
          } else if (state is AuditEntityLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.blueAccent,
              strokeWidth: 5,
            ));
          } else if (state is AuditEntityFailure) {
            return const Center(child: Text("error while fetching data"));
          } else if (state is AuditEntityLoaded) {
            return _buildTablesListView(state.listGeneralCount);
          }
          return const Center(child: Text("something went wrong!!"));
        },
      ),
    ));
  }

  Widget _buildTablesListView(List<List> listGeneralCount) {
    return ListView.builder(
        itemCount: listGeneralCount.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                " ${listGeneralCount[index][0]} (${listGeneralCount[index][1].toString()})",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          );
        });
  }
}
