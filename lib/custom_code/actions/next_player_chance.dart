// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future<int> nextPlayerChance(
  int currentPlayer,
  List<int> players,
  int totalPlayers,
) async {
  int i = (currentPlayer % totalPlayers);
  do {
    if (players[i] < 100) {
      return i;
    }
    i = (i + 1) % totalPlayers;
  } while (i != currentPlayer);

  return -1;
}
