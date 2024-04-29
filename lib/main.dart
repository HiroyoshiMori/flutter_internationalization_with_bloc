import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './app/app.dart';
import 'utils/utils.dart';

void main() async {
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(AppPage(appLanguage: appLanguage));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('Title')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.translate('Message'),
              style: const TextStyle(fontSize: 32),
            ),
            BlocBuilder<AppBloc, AppState>(
                builder: (context, AppState appState) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AppBloc>(context).add(
                              const LanguageChanged(locale: Locale('ja'))
                          );
                        },
                        child: const Text('日本語 (ja)'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AppBloc>(context).add(
                              const LanguageChanged(locale: Locale('en'))
                          );
                        },
                        child: const Text('English (en)'),
                      )
                    ],
                  );
                }
            ),

          ],
        ),
      ),
    );
  }
}
