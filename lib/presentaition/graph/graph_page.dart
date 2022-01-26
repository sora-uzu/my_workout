import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'graph_model.dart';

class GraphPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GraphModel>(
      create: (_) => GraphModel(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Consumer<GraphModel>(
          builder: (context, model, child) {
            return Text('グラフ画面');
          },
        ),
      ),
    );
  }
}
