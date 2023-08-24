import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futsalbook_2_0_vendor/src/config/router/app_router.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/cubits/routing/routes_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RoutesCubit(),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationParser: AppRouter.router.routeInformationParser,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
      ),
    );
  }
}
