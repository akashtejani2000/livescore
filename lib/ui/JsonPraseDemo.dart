import 'package:flutter/material.dart';
import 'package:live_score/model/Services.dart';
import 'package:live_score/model/class.dart';

class JsonParseDemo extends StatefulWidget {
  JsonParseDemo() : super();

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  Services services = Services();
  MatchesIrecent? user;

  @override
  void initState() {
    // TODO: implement initState
    services.getUser().then((users) {
      user = users;
      print('user1111231------>${user!.ciRslt!.mch![0].evt![0].evt}');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: user!.ciRslt != null
          ? Container(
              child: ListView.builder(
                itemCount: user!.ciRslt!.mch!.length,
                itemBuilder: (context, index) {
                  return Text(user!.ciRslt!.mch![index].evt!
                      .map((e) => e.evt)
                      .toString());
                },
              ),
            )
          : CircularProgressIndicator(),
    );
  }
}
