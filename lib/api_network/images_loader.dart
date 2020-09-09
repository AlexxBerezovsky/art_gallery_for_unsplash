import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:art_gallery_for_unsplash/models/image.dart';
//import 'package:';

class ImagesLoader {
  static final ImagesLoader _instance = ImagesLoader();
  ImagesLoader.internal();
  factory ImagesLoader() => _instance;


  Future <Uint8List> downloadImage(String url) async{
    var request = await http.get(url);
    return request.bodyBytes;
  }
}