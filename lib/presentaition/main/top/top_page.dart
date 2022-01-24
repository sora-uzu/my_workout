import 'package:flutter/material.dart';
import 'package:my_workout/presentaition/main/top/top_model.dart';
import 'package:my_workout/save/save_page.dart';
import 'package:provider/provider.dart';

class TopPage extends StatelessWidget {
  final List<String> _tabNames = [
    "保存",
  ];

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider<TopModel>(
      create: (_) => TopModel(),
      child: Consumer<TopModel>(
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(
                toolbarHeight: deviceHeight * 0.06,
                centerTitle: true,
                title: Text(
                  _tabNames[model.currentIndex],
                  style: TextStyle(fontSize: 20),
                ),
                backgroundColor: Colors.blue,
              ),
              body: _topPageBody(context),
              bottomNavigationBar: SizedBox(
                height: deviceHeight * 0.1,
                child: BottomNavigationBar(
                  onTap: model.onTabTapped,
                  currentIndex: model.currentIndex,
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.edit),
                      title: Text(_tabNames[0]),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }

  Widget _topPageBody(BuildContext context) {
    final model = Provider.of<TopModel>(context);
    final currentIndex = model.currentIndex;
    return Stack(
      children: <Widget>[
        _tabPage(currentIndex, 0, SavePage()),
      ],
    );
  }

  Widget _tabPage(int currentIndex, int tabIndex, StatelessWidget page) {
    return Visibility(
      visible: currentIndex == tabIndex,
      maintainState: true,
      child: page,
    );
  }
}
