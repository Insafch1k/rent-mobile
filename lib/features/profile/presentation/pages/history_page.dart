import 'package:domof/core/presentation/widgets/custom_app_bar.dart';
import 'package:domof/features/profile/presentation/bloc/history/history_event.dart';
import 'package:domof/features/profile/presentation/bloc/history/history_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/constants/app_colors.dart';
import '../bloc/history/history_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<HistoryBloc>().state is HistoryInitialState) {
        context.read<HistoryBloc>().add(LoadHistoryEvent());
      }
    });

    return Scaffold(
      appBar: CustomAppBar(title: 'История просмотра'),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          if (state is HistoryLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is HistoryEmptyState) {
            return _buildEmptyState(context);
          } else if (state is HistoryLoadedState) {
            return ListView.builder(
                padding: const EdgeInsets.all(20.0),
                itemCount: state.listings.length,
                itemBuilder: (
                  context,
                  index,
                ) {
                  final listing = state.listings[index];
                  return Card(
                    elevation: 2.0,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10.0),
                      leading: listing.listing.photos.isNotEmpty
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(listing.listing.photos[0],
                                  width: 60, height: 60, fit: BoxFit.cover),
                            )
                          : const Icon(Icons.image_not_supported, size: 60),
                      title: Text(
                        listing.listing.address,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '${listing.listing.price} руб.',
                        style: const TextStyle(fontSize: 14.0),
                      ),
                      trailing: Icon(
                        listing.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                        size: 24.0,
                      ),
                      onTap: () {},
                    ),
                  );
                });
          } else if (state is HistoryErrorState) {
            return Center(child: Text('Ошибка: ${state.message}'));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 0))
              ]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 45.0,
                  ),
                  Image.asset(
                    'assets/images/history.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    'История просмотра отсутствует',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'SFPro-Medium',
                    ),
                  ),
                  const SizedBox(height: 80.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: ElevatedButton(
                      onPressed: () => context.go('/home'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.rightGreen,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Вернуться на главную',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'SFPro-Medium',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
