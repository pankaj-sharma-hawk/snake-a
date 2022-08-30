import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String dicefunc(int? num) {
  if (num == 1) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/cv1abux76s4c/one.png";
  } else if (num == 2) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/veb120yh7wrd/two.png";
  } else if (num == 3) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/uu9glqii6gmc/three.png";
  } else if (num == 4) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/3uy98397ue7m/four.png";
  } else if (num == 5) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/8oiycomm2hrk/five.png";
  } else if (num == 6) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/dn3je98lmq27/six.png";
  } else if (num == 7) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/l9t2r2ucmds1/dicedreams-dice-dream.gif";
  } else {
    return "assets/images/five.png";
  }
}

String turnFunc(
  int turncount,
  int numberOfPlayer,
) {
  int temp = turncount % numberOfPlayer;
  if (temp == 0) {
    return "Red";
  } else if (temp == 1) {
    return "Blue";
  } else if (temp == 2) {
    return "Green";
  } else if (temp == 3) {
    return "Yellow";
  } else {
    return "Red";
  }
}

int saapsedhifunch(int num) {
  if (num == 4) {
    return 56;
  } else {
    return 0;
  }
}

String turnimagesetfunc(int turncount) {
  int temp = turncount % 4;
  if (temp == 0) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/rl4wh6q03j59/Untitled6.png";
  } else if (temp == 1) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/jx0xncz338it/Untitled3.png";
  } else if (temp == 2) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/4t5ckqlhcmzc/Untitled4.png";
  } else if (temp == 3) {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/yg283en115rk/Untitled5.png";
  } else {
    return "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/rl4wh6q03j59/Untitled6.png";
  }
}

int add(
  int firstValue,
  int secondValue,
) {
  return firstValue + secondValue;
}

bool lessThenEqual(
  int firstValue,
  int seconcValue,
) {
  return firstValue <= seconcValue;
}

String printListOfValues(List<int> values) {
  return values.map((i) => i.toString()).join(" , ");
}
