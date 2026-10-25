import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/photo_repository.dart';
import '../../../../domain/models/photo.dart';
part 'photo_view_model.g.dart';

@riverpod
class PhotoViewModel extends _$PhotoViewModel {
  @override
  Future<List<Photo>> build() async {
    final repo = ref.watch(photoRepositoryProvider);
    return await repo.getPhotos();
  }
}