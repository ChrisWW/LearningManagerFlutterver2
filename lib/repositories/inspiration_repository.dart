import 'package:flutter_production_boilerplate/api/api_service.dart';
import 'package:flutter_production_boilerplate/base/base_repository.dart';
import 'package:flutter_production_boilerplate/data/remote/inspiration_response.dart';
import 'package:flutter_production_boilerplate/data/remote/wikipedia_page_response.dart';

class InspirationRepository extends BaseRepository {
  final ApiService _apiService;

  InspirationRepository(this._apiService);

  Future<InspirationResponse> postQuote() => _apiService.postQuote();

  Future<WikipediaPageResponse> getImage(String name) =>
      _apiService.getImage(name);
}
