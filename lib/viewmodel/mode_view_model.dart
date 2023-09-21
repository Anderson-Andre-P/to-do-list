import 'package:flutter/foundation.dart';

class ModeViewModel extends ChangeNotifier {
  bool isEditing = false;
  int indexToEdit = -1;

  ModeViewModel();

  void setEditingMode(int indexToEdit) {
    isEditing = true;
    this.indexToEdit = indexToEdit;
    notifyListeners();
  }

  void setAddingMode() {
    isEditing = false;
    notifyListeners();
  }
}
