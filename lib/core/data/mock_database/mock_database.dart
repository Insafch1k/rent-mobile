import 'package:domof/core/domain/entity/listing_entity.dart';

abstract class MockDatabase {
  List<ListingEntity> getAllListings();
  void addListing(ListingEntity listing);
  void updateListing(ListingEntity listing);
  void deleteListing(int id);
  void clear(); // Для тестирования
}
