import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inex/pages/places/places.dart';
import 'package:inex/utils/extentions.dart';
import 'package:inex/widgets/widgets.dart';

class PlacesView extends StatelessWidget {
  const PlacesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlacesBloc, PlacesState>(
      listenWhen: (previous, current) =>
          current.stateStatus == PlacesStateStatus.failure ||
          current.errorMessage != null,
      listener: (context, state) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.errorMessage ?? '')));
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_location_alt_outlined),
          onPressed: () {
            context.showModal(
              useRootNavigator: true,
              child: const AddPlaceView(),
            );
          },
        ),
        body: BlocBuilder<PlacesBloc, PlacesState>(
          builder: (context, state) {
            switch (state.stateStatus) {
              case PlacesStateStatus.initial:
                return const SizedBox.shrink();
              case PlacesStateStatus.inProgress:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case PlacesStateStatus.failure:
                return Center(
                  child: Text(state.errorMessage!),
                );
              case PlacesStateStatus.success:
                return ListView.builder(
                  itemCount: state.places.length,
                  itemBuilder: (BuildContext context, int index) {
                    final place = state.places[index];
                    return ListTile(
                      title: Text(place.name),
                      subtitle: Text(place.description),
                      leading: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          context.showModal(
                            useRootNavigator: true,
                            child: AddPlaceView(
                              place: place,
                            ),
                          );
                        },
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          showConfirmDialog(
                            context,
                            title: 'Are you want delete ${place.name}?',
                            confirmText: 'Delete',
                            onConfirm: () {
                              context
                                  .read<PlacesBloc>()
                                  .add(PlacesEvent.remove(place.id));
                            },
                          );
                        },
                      ),
                      onTap: () => GoRouter.of(context).pushNamed(
                        'place',
                        params: {'id': place.id.toString(), 'name': place.name},
                      ),
                    );
                  },
                );
            }
          },
        ),
      ),
    );
  }
}
