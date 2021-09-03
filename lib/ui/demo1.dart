import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Demo1 extends StatefulWidget {
  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  final String apiUrl =
      "http://sc.cricitch.com/st_files/matches_irecent.json?ts=846";

  @override
  void initState() {
    super.initState();
  }

  Future<List<dynamic>> fetchUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    print("CRICMATCH :: ${json.decode(result.body)['ci_rslt']['mch']}");
    return json.decode(result.body)['ci_rslt']['mch'];
  }

  String matchInfo(dynamic user) {
    return user['\$']['id'];
  }

  String _location(dynamic user) {
    return user['location']['country'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: fetchUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print("SNAPSHOT DATA ${snapshot.data}");
            if (snapshot.hasData) {
              //print(matchInfo(snapshot.data[0]));
              return ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: <Widget>[
                          Text(matchInfo(snapshot.data[index])),
                          /* Text(event(snapshot.data[index])),
                            Text(snapshot.data[index]['\$']['curr_sts']),
                            Text(snapshot.data[index]['\$']['gmt_dt']),
                            Text(snapshot.data[index]['\$']['id']),
                            Text(snapshot.data[index]['\$']['local_dt']),
                            Text(snapshot.data[index]['\$']['typ']),
                            Text(snapshot.data[index]['\$']['ord']),*/
                        ],
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
