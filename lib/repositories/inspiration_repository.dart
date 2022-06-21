import 'package:flutter_production_boilerplate/api/api_service.dart';
import 'package:flutter_production_boilerplate/base/base_repository.dart';

class InspirationRepository extends BaseRepository {
  final ApiService _apiService;
  InspirationRepository(this._apiService);

  Future postQuote() => _apiService.postQuote(body);
  Future getImage() => _apiService.getImage(name);
}

// TODO retro