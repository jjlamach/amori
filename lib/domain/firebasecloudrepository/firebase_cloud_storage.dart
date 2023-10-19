import 'dart:async';

import 'package:amori/domain/models/user/amori_user.dart';

abstract class FirebaseCloudStorage {
  Future<AmoriUser?> getUser(String uid);
  Future<void> saveUserToFireStore(AmoriUser user);
}
