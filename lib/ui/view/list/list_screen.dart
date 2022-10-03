import 'package:flutter/material.dart';
import 'package:testapp/ui/view/list/list_view.dart';

import '../../res/app_string.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.instance.textAppName),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ItemListView(),
          ],
        ),
      ),
    );
  }
}
