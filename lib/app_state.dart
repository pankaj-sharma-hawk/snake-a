import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _rules = prefs.getStringList('ff_rules') ?? _rules;
  }

  late SharedPreferences prefs;

  int dicevalue = 5;

  int WhoseTurn = 0;

  int Acurr = 0;

  int Bcurr = 0;

  int Ccurr = 0;

  int Dcurr = 0;

  List<int> players = [0, 0, 0, 0];

  int numberofPlayers = 3;

  int chance = 0;

  String answer = 'Pankaj';

  List<String> _rules = [
    '1. This is a Snake-Ladder-Trivia Game. it has some new twist with old fashion game. in this game if you came a point where you need to climb ladder or a snake bite you, at that time you have to answer one question regarding Maths,Geography,Science,History. if you will right you will climb the ladder ',
    '2. Minium 2 Players and Maximum 4 Players can play this game.',
    '3. Minium 2 Players and Maximum 4 Players can play this game.',
    '4. Minium 2 Players and Maximum 4 Players can play this game.'
  ];
  List<String> get rules => _rules;
  set rules(List<String> _value) {
    _rules = _value;
    prefs.setStringList('ff_rules', _value);
  }

  void addToRules(String _value) {
    _rules.add(_value);
    prefs.setStringList('ff_rules', _rules);
  }

  void removeFromRules(String _value) {
    _rules.remove(_value);
    prefs.setStringList('ff_rules', _rules);
  }

  bool rewardResult = false;
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
