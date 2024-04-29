import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../utils/utils.dart';
import '../bloc/app_bloc.dart';
import '../route/app_router.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<StatefulWidget> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return BlocBuilder<AppBloc, AppState>(
        buildWhen: (previous, current) {
          return (previous.locale != current.locale);
        },
        builder: (context, AppState state) {
          return MaterialApp.router(
            routeInformationParser: appRouter.router.routeInformationParser,
            routeInformationProvider: appRouter.router.routeInformationProvider,
            routerDelegate: appRouter.router.routerDelegate,
            supportedLocales: AppLocalizations.supportedLanguages,
            locale: state.locale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        }
    );
  }
}