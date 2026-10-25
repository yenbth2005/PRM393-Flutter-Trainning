import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/photo.dart';
import '../services/favorite_local_service.dart';
part 'favorite_photo_repository.g.dart';

@Riverpod(keepAlive: true)
FavoritePhotoRepository favoritePhotoRepository(Ref ref){
  final service  = ref.watch(favoriteLocalServiceProvider);

  return FavoritePhotoRepository(service);
}

class FavoritePhotoRepository {
  final FavoriteLocalService _service;

  FavoritePhotoRepository(this._service);

  //thêm ảnh vào danh sách yêu thích
  Future<int> addFavorite(Photo photo) {
    return _service.insertFavorite(photo);
  }

  //Lấy danh sách ảnh yêu thích
  Future<List<Photo>> getPhotosFavorite() {
    return _service.getPhotos();
  }

  // Xóa ảnh yêu thích
  Future<int> deleteFavoritePhoto(int photoId) {
    return _service.deleteFavoritePhoto(photoId);
  }

  // Kiểm tra ảnh yêu thích
  Future<bool> isFavoritePhoto(int photoId) {
    return _service.isFavoritePhoto(photoId);
  }


}
