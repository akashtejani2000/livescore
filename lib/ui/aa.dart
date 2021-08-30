import 'package:flutter/material.dart';
import 'package:live_score/generated/l10n.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appname),
      ),
    );
  }
}
