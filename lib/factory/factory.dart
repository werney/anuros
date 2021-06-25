import 'dart:convert';

import 'package:anuros/factory/data.dart';
import 'package:anuros/model/frog.dart';

class Factory {

  static List<Frog> builder (){
    
    var frogData = Data.data;
    var objsJson = jsonDecode(frogData)['frogs'] as List;
    List<Frog> frogs = objsJson.map((item) => Frog.fromJson(item)).toList();
    return frogs;

  }

}