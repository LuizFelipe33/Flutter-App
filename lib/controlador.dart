import 'package:flutter/foundation.dart';

class controller extends ChangeNotifier{

  static controller instance = controller();
  
  bool temaPreto = false;
  changeTheme(){
    temaPreto = !temaPreto;
    notifyListeners();
  }
}