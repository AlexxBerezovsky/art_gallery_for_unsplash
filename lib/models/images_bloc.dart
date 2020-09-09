import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'image.dart';

class ImagesBloc{
  final List<ImageUnsplash> _images = List();
  int getLength()=>_images.length;

  final _additionController = StreamController<List<ImageUnsplash>>();
  Sink<List<ImageUnsplash>> get addition => _additionController.sink;

  final _allImageSubject = BehaviorSubject <List<ImageUnsplash>>(seedValue:[]);
  Stream <List<ImageUnsplash>> get allImages => _allImageSubject.stream;

  ImagesBloc() {
    _additionController.stream.listen((List<ImageUnsplash> newImages) {
      _images.addAll(newImages);
      _allImageSubject.add(_images);
      print(
          '_additionController.stream.listen====images-list-length====${_images
              .length}');
    });
  }
  void dispose () {
    _additionController.close();
    _allImageSubject.close();
  }
}
