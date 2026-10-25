import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/photo.dart';
import '../services/photo_api_service.dart';
part 'photo_repository.g.dart';

@riverpod
PhotoRepository photoRepository(Ref ref) {
  return PhotoRepository();
}

class PhotoRepository {
  Future<List<Photo>> getPhotos() {
    return fetchPhotos();
  }
}

