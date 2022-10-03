import 'package:flutter/cupertino.dart';
import 'package:testapp/data/models/universities_model.dart';
import 'package:testapp/data/network/api_services.dart';
import '../../data/network/api_response.dart';

class AppViewModel with ChangeNotifier {
  final _popularMovieRepo = ApiServices();

  ApiResponse<UniversitiesModel> universitiesList = ApiResponse.loading();

  setUniversitiesList(ApiResponse<UniversitiesModel> response) {
    universitiesList = response;
    notifyListeners();
  }

  Future<void> fetchUniversitiesListApi() async {
    await _popularMovieRepo.getUniversities().then((value) {
      setUniversitiesList(ApiResponse.completed(value));
    }).onError((error, stackTrace) =>
        setUniversitiesList(ApiResponse.error(error.toString())));
  }
}
