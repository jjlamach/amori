import 'package:amori/domain/firebasecloudrepository/firebase_cloud_storage_impl.dart';
import 'package:amori/domain/models/user/amori_user.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<AmoriUser> {
  final FirebaseCloudStorageImpl _storage;
  HomeCubit(this._storage) : super(const AmoriUser());

  void getUsername(String uid) async {
    final user = await _storage.getUser(uid);
    if (user != null) {
      emit(user);
    } else {
      emit(const AmoriUser());
    }
  }
}
