import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/app_bloc.dart';
import 'app_view.dart';
import '../../utils/utils.dart';

class AppPage extends StatelessWidget {
  final AppLanguage appLanguage;
  const AppPage({
    super.key,
    required this.appLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (_) {
        return AppBloc(appLanguage.appLocale);
      },
      child: const AppView(),
    );
  }
}