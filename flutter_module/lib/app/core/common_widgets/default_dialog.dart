import 'package:flutter_module/app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class DefaultDialog extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback gotIt;

  const DefaultDialog({Key key, this.title, this.message, this.gotIt})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: AppTextTheme.headlineBrownSemibold,
      ),
      content: Text(message),
      actions: <Widget>[
        FlatButton(
          onPressed: () => gotIt(),
          child: const Text('Got it!'),
        )
      ],
    );
  }
}
