import 'package:amori/main.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteCubit extends Cubit<bool> {
  final userCollection = FirebaseFirestore.instance.collection('users');
  FavoriteCubit() : super(false);

  void favoriteFeeling(String uid, String date) {
    print('Favorite Date: $date');
    try {
      userCollection.doc(uid).collection('feelings').doc(date).update(
        {
          'isFavorite': true,
        },
      );
      emit(true);
      kLogger.i('Feeling was added to Favorites.');
    } on FirebaseException catch (e) {
      emit(false);
      kLogger.e('Could not favorite Feeling., ${e.code}');
    }
  }

  void unfavoriteFeeling(String uid, String date) {
    try {
      userCollection.doc(uid).collection('feelings').doc(date).update(
        {
          'isFavorite': false,
        },
      );
      kLogger.i('Feeling was removed from Favorites.');
      emit(false);
    } on FirebaseException catch (e) {
      kLogger.e('Could not remove Feeling from Favorites, ${e.code}');
      emit(false);
    }
  }
}
