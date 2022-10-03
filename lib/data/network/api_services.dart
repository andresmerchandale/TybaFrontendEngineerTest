import 'package:testapp/data/network/api_client.dart';
import 'package:testapp/ui/res/app_string.dart';

import '../models/universities_model.dart';

class ApiServices {
  final ApiClient apiClient = ApiClient();

  Future<UniversitiesModel?> getUniversities() async {
    try {
      final response = await apiClient.get(AppString.universitiesBaseUrl);
      dynamic model = UniversitiesModel.fromJson(response);
      return model;
    } catch (e) {
      rethrow;
    }
  }
}
