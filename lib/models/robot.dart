import 'package:robot/models/field.dart';
import 'package:robot/models/fielf_object.dart';

class Robot {
  int x;
  int y;
  final Field field;
  FieldObject? object;
  Robot({required this.x, required this.y, required this.field});

  void moveLeft() {
    if (x > 1) {
      --x;
    }
  }

  void moveRight() {
    if (x < field.width) {
      ++x;
    }
  }

  void moveUp() {
    if (y > 1) {
      --y;
    }
  }

  void moveDown() {
    if (y < field.length) {
      ++y;
    }
  }

  void take() {
    final index = field.objects.indexWhere((element) {
      if (x == element.x && y == element.y) {
        return true;
      }
      return false;
    });
    if(index == -1){
      return ;
    }
    object = field.objects[index];
    field.objects.removeAt(index);

  }

  void give() {
    final obejectIsHere = field.objects.any((element) {
      if (x == element.x && y == element.y) {
        return true;
      }
      return false;
    });
    if(obejectIsHere == false){
      object!.x = x;
      object!.y = y;

      field.objects.add(object!);
      object = null;

    }
  }
}
