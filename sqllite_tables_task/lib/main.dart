import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/operations_on_audit_json/presentation/cubit/audit_entity_cubit.dart';
import 'feature/operations_on_audit_json/presentation/pages/home_page.dart';
import 'injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<AuditEntityCubit>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Sqllite Tables Task",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Homepage(),
      ),
    );
  }
}
