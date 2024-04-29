import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/route/app_path.dart';
import '../../utils/app_localizations.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('Second Page')),
      ),
      body: Column(
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text(
                AppLocalizations.of(context)!.translate('Second Message'),
                style: const TextStyle(fontSize: 32),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              ElevatedButton(
                onPressed: () {
                  context.pop(context);
                },
                child: Text(
                    AppLocalizations.of(context)!.translate('Go back')
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}