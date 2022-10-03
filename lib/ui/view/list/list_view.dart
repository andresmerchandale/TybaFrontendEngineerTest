// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/ui/view/list/university_list_item.dart';
import '../../../data/network/api_response.dart';
import '../../res/app_color.dart';
import '../../res/app_style.dart';
import '../../viewmodels/app_view_model.dart';

class ItemListView extends StatefulWidget {
  const ItemListView({Key? key}) : super(key: key);

  @override
  State<ItemListView> createState() => _ItemListViewState();
}

class _ItemListViewState extends State<ItemListView> {
  AppViewModel appViewModel = AppViewModel();

  @override
  void initState() {
    appViewModel.fetchUniversitiesListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 2;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ChangeNotifierProvider<AppViewModel>(
                create: (BuildContext context) => appViewModel,
                child: Consumer<AppViewModel>(builder: (context, value, _) {
                  switch (value.universitiesList.status) {
                    case Status.LOADING:
                      return SizedBox(
                        height: height,
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    case Status.ERROR:
                      return Text(value.universitiesList.toString());
                    case Status.COMPLETED:
                      return Column(children: [
                        const HomeListTittleWidget(text: "University List"),
                        SizedBox(
                          height: height * .02,
                        ),
                        _upComingMovieList(height, value)
                      ]);
                    default:
                      return const Text("No Daat Found");
                  }
                })),
          ],
        ),
      ),
    );
  }

  SizedBox _upComingMovieList(double height, AppViewModel value) {
    return SizedBox(
      height: height * .4,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: value.universitiesList.data!.results!.length,
          itemBuilder: (context, index) {
            return UniversityListItem(
                university: value.universitiesList.data!.results![index]);
          }),
    );
  }
}

class HomeListTittleWidget extends StatelessWidget {
  final String text;
  const HomeListTittleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyle.instance.h5Bold,
        ),
        Text("See all",
            style: AppStyle.instance.h5Bold.copyWith(
              color: AppColors.redColor,
            )),
      ],
    );
  }
}
