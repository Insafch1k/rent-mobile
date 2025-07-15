import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../model/response_models.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://85.143.174.81:8000/api/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Preferences
  @POST("/get_preference")
  Future<PreferenceResponse> getPreference(@Body() Map<String, dynamic> body);

  @POST("/create_preference")
  Future<PreferenceResponse> createPreference(
      @Body() Map<String, dynamic> body);

  @PUT("/update_preference")
  Future<PreferenceResponse> updatePreference(
      @Body() Map<String, dynamic> body);

  // Districts and Cities
  @GET("/districts")
  Future<DistrictResponse> getDistricts(@Query("city_id") int cityId);

  @GET("/cities")
  Future<CityResponse> getCities();

  // Listings
  @POST("/listings")
  Future<void> addListing(@Body() Map<String, dynamic> body);

  @GET("/all_listings")
  Future<ListingResponse> getAllListings();

  @POST("/rentals/monthly")
  Future<RentalResponse> getRentalsByPreference(
      @Body() Map<String, dynamic> body);

  // Profile
  @GET("/profile/history")
  Future<ListingResponse> getHistory(@Query("telegram_id") int telegramId);

  @GET("/profile/favorites")
  Future<ListingResponse> getFavorites(@Query("tg_id") int tgId);

  @POST("/listings/view")
  Future<void> addToHistory(@Body() Map<String, dynamic> body);

  @POST("/profile/favorites")
  Future<void> addToFavorites(@Body() Map<String, dynamic> body);
}
