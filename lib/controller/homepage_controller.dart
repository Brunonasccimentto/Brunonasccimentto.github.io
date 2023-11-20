
import 'package:flutter/material.dart';

class HomepageController {
  ValueNotifier<int> result = ValueNotifier<int>(0);
  
  void sumAllValuesDivisibleBy3And5(inputValue){
    result.value = 0;
    int value = int.parse(inputValue);   
    int comparableValue = 0;

    for (comparableValue = 0; comparableValue < value; comparableValue++) {
      if(comparableValue % 3 == 0 || comparableValue % 5 == 0){
        result.value += comparableValue;
       
      }
    }
  }
}