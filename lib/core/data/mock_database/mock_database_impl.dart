import 'package:domof/core/domain/entity/listing_entity.dart';
import 'mock_database.dart';

class MockDatabaseImpl implements MockDatabase {
  static final MockDatabaseImpl _instance = MockDatabaseImpl._internal();
  factory MockDatabaseImpl() => _instance;

  MockDatabaseImpl._internal();

  final Map<int, ListingEntity> _listings = {};

  @override
  List<ListingEntity> getAllListings() => _listings.values.toList();

  @override
  void addListing(ListingEntity listing) {
    _listings[listing.listing.id] = listing;
  }

  @override
  void updateListing(ListingEntity listing) {
    if (_listings.containsKey(listing.listing.id)) {
      _listings[listing.listing.id] = listing;
    }
  }

  @override
  void deleteListing(int id) {
    _listings.remove(id);
  }

  @override
  void clear() {
    _listings.clear();
  }
}
