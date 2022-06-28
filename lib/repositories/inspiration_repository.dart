import 'package:flutter_production_boilerplate/api/api_service.dart';
import 'package:flutter_production_boilerplate/base/base_repository.dart';
import 'package:flutter_production_boilerplate/data/remote/inspiration_quote_request_body.dart';

class InspirationRepository extends BaseRepository {
  final ApiService _apiService;
  InspirationRepository(this._apiService);

  Future postQuote() => _apiService.postQuote(InspirationQuoteRequestBody());
  Future getImage(String name) => _apiService.getImage(name);
}