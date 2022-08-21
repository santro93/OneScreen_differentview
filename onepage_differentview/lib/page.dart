import 'package:flutter/material.dart';

class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  bool done = false;
  bool edit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
              child: done
                  ? Text("Edit", style: TextStyle(color: Colors.white))
                  : Text("Done", style: TextStyle(color: Colors.white)),
              //    style: TextStyle(fontSize: 14)
              onPressed: () {
                setState(() {
                  done = !done;
                  edit = !edit;
                });
              }),
        ),
        body: done
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: const Text("12:05")),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(child: const Text("12:21")),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Row(
                    children: const [
                      Text("00:05"),
                      SizedBox(
                        width: 300,
                      ),
                      Icon(Icons.compare_arrows)
                    ],
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      children: const [
                        Text("00:05"),
                        SizedBox(
                          width: 300,
                        ),
                        Icon(Icons.compare_arrows)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ));
  }
}
