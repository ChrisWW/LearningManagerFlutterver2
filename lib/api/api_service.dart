import 'package:flutter_production_boilerplate/data/models/inspiration_quote_request_body.dart';
import 'package:flutter_production_boilerplate/data/models/inspiration_response.dart';
import 'package:flutter_production_boilerplate/data/models/wikipedia_page_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: '')
abstract class ApiService {
  factory ApiService(Dio dio) => _ApiService(dio);

  // TODO retro
  // body: {"method": "getQuote", "format": "json", "lang": "en"});
  // @POST('')
  // Future<void> postQuote(@Body() Map<String, dynamic> body,
  //     {@Header('Content-Type') String contentType = 'application/json'});
  //
  // @POST("")
  // Future<PostResponse> postDemo(@Body() PostRequest dataPost);
// ustawianie zwrotu Future<obiekt> <---

  @POST('http://api.forismatic.com/api/1.0/')
  Future<InspirationResponse> postQuote(@Body() InspirationQuoteRequestBody body);

  // TODO

  @GET('https://en.wikipedia.org/w/api.php?action=query&generator=search&gsrlimit=1&prop=pageimages%7Cextracts&pithumbsize=400&gsrsearch={name}&format=json')
  Future<WikipediaPageResponse> getTask(@Path("name") String name);

  // @GET('https://en.wikipedia.org/w/api.php?action=query&generator=search&gsrlimit=1&prop=pageimages%7Cextracts&pithumbsize=400&gsrsearch='+ name + '&format=json')
  // Future<void> getImage(String name);

  // get image of the quote author, using Wikipedia Api
  // getImg(String name) async {
  //   var image = await http.get(Uri.parse(
  //       "https://en.wikipedia.org/w/api.php?action=query&generator=search&gsrlimit=1&prop=pageimages%7Cextracts&pithumbsize=400&gsrsearch=" +
  //           name +
  //           "&format=json"));
}