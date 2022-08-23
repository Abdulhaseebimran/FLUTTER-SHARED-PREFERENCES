import 'package:flutter/material.dart';
import 'package:sharedpreferences/shared_preferences.dart';


class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  SharedPreferencesHelper _preferencesHelper = SharedPreferencesHelper();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                    onPressed: () {
                      _preferencesHelper.setString();
                    },
                    child: Text("Save Data")),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                    onPressed: () {
                      _preferencesHelper.getString();
                    },
                    child: Text("Get Data")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}