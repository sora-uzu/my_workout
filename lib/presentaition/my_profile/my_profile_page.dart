import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_profile_page_model.dart';

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProfileModel>(
      create: (_) => MyProfileModel(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Consumer<MyProfileModel>(
          builder: (context, model, child) {
            return Text('プロフィール画面');
          },
        ),
      ),
    );
  }
}
