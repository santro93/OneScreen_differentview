import 'package:flutter/material.dart';
import 'package:flutter_project/edit_page.dart';

class DonePage extends StatefulWidget {
  const DonePage({Key? key}) : super(key: key);

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  void changePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => EditPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text("Reminder Screen"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                changePage();
              },
              child: const Text(
                "Done",
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
                  child: Text(
                    "data1",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Text(
                    "data2",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Text(
                    "data3",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Text(
                    "data4",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
