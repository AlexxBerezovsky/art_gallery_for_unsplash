import 'package:flutter/widgets.dart';
import 'images_bloc.dart';

  class ImagesProvider extends InheritedWidget{
  final ImagesBloc imagesBloc;

  ImagesProvider ({Key key, ImagesBloc imagesBloc, Widget child,}) : imagesBloc = imagesBloc ?? ImagesBloc(),
    super(key: key, child: child);

    @override
  bool updateSholdNotify(InheritedWidget oldWidget) => true;

  static ImagesBloc of(BuildContext context) =>

      // ignore: deprecated_member_use
      (context.inheritFromWidgetOfExactType(ImagesProvider) as ImagesProvider).imagesBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }

}

