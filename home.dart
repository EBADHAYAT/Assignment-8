import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const MyApp());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var gettext = "";
  var lst = [];

  submit() {
    setState(() {
      lst.add(gettext);
      print(lst);
    });
  }

  Delete() {
    setState(() {
      lst.remove(gettext);
      print(lst);
    });
  }

  Upgrade() {
    setState(() {
      lst.add(gettext);
      print(lst);
    });
  }

  TextEditingController txt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "TO DO",
            style: TextStyle(
                height: 2.0, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.notification_add_sharp, color: Colors.red),
              onPressed: () {}),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("j.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                      controller: txt,
                      onChanged: (abc) {
                        gettext = abc;
                      }),
                ),
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {
                              submit();
                              txt.clear();
                              // navigate to second page
                            },
                            style: TextButton.styleFrom(primary: Colors.black),
                            child: Text("SUBMIT")),
                        TextButton(
                            onPressed: () {
                              Delete();
                              txt.clear();
                            },
                            style: TextButton.styleFrom(primary: Colors.black),
                            child: Text("Delete")),
                        TextButton(
                            onPressed: () {
                              Upgrade();
                              txt.clear();
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                            ),
                            child: Text("Upgrade")),
                      ]),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: lst.length,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return Text(" ${lst[index]}");
                    })
              ]),
        ),
      ),
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Ss.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
