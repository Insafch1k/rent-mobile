// import 'package:domof/data/model/favorite_model.dart';

// import '../../../utils/models/listing_model.dart';
// import 'favorite_remote_data_source.dart';

// class FavoriteRemoteDataSourceImpl implements FavoriteRemoteDataSource {
//   @override
//   Future<FavoriteModel> getFavorites() async {
//     // Мок-данные для тестирования
//     final mockListings = [
//       Listing(
//         isFavorite: true,
//         listing: ListingDetails(
//           address: 'ул. Ленина, 1',
//           category: 'Квартира',
//           cityId: 1,
//           contact: '+7 (999) 123-45-67',
//           createdAt: '2025-07-10',
//           deposit: 5000.0,
//           description: 'Уютная квартира в центре',
//           districtId: 1,
//           floor: 3,
//           id: 1,
//           latitude: 55.7558,
//           linkUrl: 'https://example.com/1',
//           longitude: 37.6173,
//           photos: ['https://via.placeholder.com/150'],
//           price: 30000.0,
//           recommendations: [
//             Recommendation(
//               criteria: {
//                 'Метро': {
//                   'Положительные': ['Близко к метро'],
//                   'Негативные': [],
//                 },
//                 'Цена': {
//                   'Положительные': ['Доступная цена'],
//                   'Негативные': [],
//                 },
//               },
//             ),
//           ],
//           rooms: 2,
//           square: 45.0,
//           userId: 1,
//         ),
//       ),
//       // Можно добавить больше мок-данных
//     ];

//     return Future.value(FavoriteModel(listings: mockListings));
//   }
// }

import 'package:domof/features/profile/data/model/favorite_model.dart';
import 'favorite_remote_data_source.dart';

class FavoriteRemoteDataSourceImpl implements FavoriteRemoteDataSource {
  @override
  Future<FavoriteModel> getFavorites() async {
    return Future.value(FavoriteModel(listings: []));
  }
}
