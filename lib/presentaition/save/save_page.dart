import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_workout/presentaition/save/save_model.dart';
import 'package:provider/provider.dart';

class SavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SaveModel>(
      create: (_) => SaveModel(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Consumer<SaveModel>(
          builder: (context, model, child) {
            return Text('入力画面');
          },
        ),
      ),
    );
  }
}
