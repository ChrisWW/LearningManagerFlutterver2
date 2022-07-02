import 'package:flutter_production_boilerplate/api/api_service.dart';
import 'package:flutter_production_boilerplate/base/base_repository.dart';
import 'package:flutter_production_boilerplate/data/remote/inspiration_quote_request_body.dart';
import 'package:flutter_production_boilerplate/data/remote/inspiration_response.dart';
import 'package:flutter_production_boilerplate/data/remote/wikipedia_page_response.dart';

class InspirationRepository extends BaseRepository {
  final ApiService _apiService;
  InspirationRepository(this._apiService);

  Future<InspirationResponse> postQuote() => _apiService.postQuote(InspirationQuoteRequestBody());
  Future<WikipediaPageResponse> getImage(String name) => _apiService.getImage(name);
}