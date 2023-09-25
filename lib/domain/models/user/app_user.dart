import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    String? uid,
    String? email,
    String? photoURL,
    String? phoneNumber,
    bool? isAnonymous,
    String? displayName,
    DateTime? creationTime,
    DateTime? lastSignedIn,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
