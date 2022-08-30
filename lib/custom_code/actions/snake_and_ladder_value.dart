// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
int snakeAndLadderValue(int newPlayerValue) {
  return nextValue(newPlayerValue);
}

var ladder = {4: 56, 12: 50, 14: 55, 22: 58, 41: 79, 54: 88};
var snake = {
  28: 10,
  37: 3,
  47: 16,
  75: 32,
  94: 71,
  96: 42,
  57: 25,
  58: 28,
  59: 24,
  60: 23
};

int nextValue(int newPlayerValue) {
  if (ladder[newPlayerValue] == null) {
    if (snake[newPlayerValue] == null) {
      return -1;
    }
    return snake[newPlayerValue] as int;
  }
  return ladder[newPlayerValue] as int;
}
