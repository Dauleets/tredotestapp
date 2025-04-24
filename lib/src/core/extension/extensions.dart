export 'src/build_context.dart';
export 'src/datetime_extension.dart';
export 'src/function.dart';
export 'src/map_indexed.dart';
export 'src/object.dart';
export 'src/string_extension.dart';
export 'src/themex.dart';

extension ObjectExt<T> on T {
  R let<R>(R Function(T it) op) => op(this);
}

mixin ImportCommonExtensions {}
