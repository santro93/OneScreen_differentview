import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  void changePageToDone() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Reminder Screen"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                changePageToDone();
              },
              child: const Text(
                "Edit",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: const [
                Card(
                  child: Text.rich(TextSpan(
                      text: "data1",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      children: [WidgetSpan(child: Icon(Icons.settings))])),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Text.rich(TextSpan(
                      text: "data2",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      children: [WidgetSpan(child: Icon(Icons.abc))])),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Text.rich(TextSpan(
                      text: "data3",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      children: [WidgetSpan(child: Icon(Icons.abc_sharp))])),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Text.rich(TextSpan(
                      text: "data4",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      children: [
                        WidgetSpan(child: Icon(Icons.access_alarm_sharp))
                      ])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
