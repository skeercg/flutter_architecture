import 'package:flutter/material.dart';
import 'package:flutter_architecture/main.config.dart';
import 'package:flutter_architecture/presentation/cubits/users_cubit.dart';
import 'package:flutter_architecture/presentation/pages/profile_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(getIt);

void main() {
  configureDependencies();

  const foldersToAnalyze = ['lib'];

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<ProfileCubit>(
        create: (_) => getIt<ProfileCubit>(),
        child: ProfilePage(),
      ),
    );
  }
}
