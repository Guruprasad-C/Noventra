import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sixth_app/providers/user_places.dart';
import 'package:sixth_app/screens/add_place.dart';
import 'package:sixth_app/widgets/places_list.dart';

class Places extends ConsumerWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => AddPlace()),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: PlacesList(places: userPlaces),
    );
  }
}
