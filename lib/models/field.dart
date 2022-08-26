import 'package:robot/models/fielf_object.dart';

class Field {
  final int width;
  final int length;
  final List<FieldObject> objects;
  Field({required this.width, required this.length, required this.objects});
}
