import 'package:flutter/material.dart';
import 'package:live_score/model/class.dart';
import 'package:live_score/model/services.dart';

class JsonParseDemo extends StatefulWidget {
  JsonParseDemo({Key? key}) : super();

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  Services services = Services();

  // late MatchesIrecent user;

  Function? future;

  @override
  void initState() {
    // TODO: implement initState
    getMatchInfo();
    super.initState();
  }

  Future<void> getMatchInfo() async {
    setState(() {
      services.getUser().then((users) {
        future = users;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body: FutureBuilder(
          future: future!(),
          builder: (context, AsyncSnapshot<List<MatchesIrecent>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('none');
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              case ConnectionState.active:
                return Text('');
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Text(
                    '${snapshot.error}',
                    style: TextStyle(color: Colors.red),
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Text(
                        snapshot.data![index].ciRslt.mch
                            .map((e) => e.vnu!.map((e) => e.vnu))
                            .toString(),
                      );
                    },
                  );
                }
            }
          },
        ));
  }
}
