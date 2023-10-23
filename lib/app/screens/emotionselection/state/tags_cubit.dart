import 'package:flutter_bloc/flutter_bloc.dart';

class TagCubit extends Cubit<String> {
  TagCubit() : super("");

  void selectTag(String tag) {
    emit(tag);
  }

  void resetSelection() {
    emit("");
  }
}
