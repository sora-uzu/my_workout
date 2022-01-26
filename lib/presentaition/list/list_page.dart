import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_model.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListModel>(
      create: (_) => ListModel(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Consumer<ListModel>(
          builder: (context, model, child) {
            return Text('一覧画面');
          },
        ),
      ),
    );
  }
}
