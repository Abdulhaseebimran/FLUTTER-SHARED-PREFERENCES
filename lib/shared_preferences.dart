import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  void setString() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs
        .setString("string ", "This is String")
        .then((value) => print(value));
  }

  void setInt() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setInt("int", 1).then((value) => print(value));
  }

  void setDouble() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setDouble("double", 1.81).then((value) => print(value));
  }

  void setBool() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setBool("bool", true).then((value) => print(value));
  }

  void setList() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setStringList("list", <String>[
      "StringList1",
      "StringList2",
      "StringList3"
    ]).then((value) => print(value));
  }

  void getString() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    String? value = _prefs.getString("string");
    print(value);
  }

  void getInt() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    int? intvalue = _prefs.getInt("int");
    print(intvalue);
  }

  void getDouble() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    double? doublevalue = _prefs.getDouble("double");
    print(doublevalue);
  }

  void getBool() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    bool? boolvalue = _prefs.getBool("bool");
    print(boolvalue);
  }

  void getStringList() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    List<String>? stringListvalue = _prefs.getStringList("list");
    print(stringListvalue);
  }

  void removeData(String keyValue) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.remove(keyValue);
  }
}