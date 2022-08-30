import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum prefKey{login ,languges}
class SharedPrefController{

  late SharedPreferences sharedPreferences;
  SharedPrefController._();
  static SharedPrefController? _instance ;

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._();
  }

 Future<void> inittalShared() async{
   sharedPreferences =await SharedPreferences.getInstance();
  }

  Future<bool> changLanguges({required String langCode})async{
    return await sharedPreferences.setString(prefKey.languges.name , langCode);
  }
  T? getValueForKey<T>(String key){
    if(sharedPreferences.containsKey(key)){
      return sharedPreferences.get(key) as T;
    }
    return null;
  }

}