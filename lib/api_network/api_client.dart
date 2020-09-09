import 'dart:async';
import 'package:art_gallery_for_unsplash/utils/restful_api.dart';
import 'package:art_gallery_for_unsplash/models/image.dart';

class UnsplashApiClient {
  final _BASE_URL = 'https://api.unsplash.com/';
  final _BASE_HEADERS = {
    'Accept-Version': 'v1',
    'Authorization':
    'Client-ID 896d4f52c589547b2134bd75ed48742db637fa51810b49b607e37e46ab2c0043'
  };
  RestfulApiUtils _utils = RestfulApiUtils();

  Future<List<ImageUnsplash>> getAllImages(int page) async {
    print('--getAllImages, page = $page');
    final url = _BASE_URL + 'photos?page=$page&per_page=20';
    List<ImageUnsplash> images = List();

    final responseJson = await _utils.get(url, _BASE_HEADERS) as Iterable;
    for (var obj in responseJson) images.add(ImageUnsplash.fromJson(obj));
    return images;
  }
}