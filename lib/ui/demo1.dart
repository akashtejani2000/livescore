import 'package:flutter/material.dart';
import 'package:live_score/extensions/extension.dart';
import 'package:live_score/model/model.dart';
import 'package:live_score/network/api_client.dart';

class Demo1 extends StatefulWidget {
  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  final List<DisplayScore> displayData = [];

  @override
  void initState() {
    getVerificationsList();
    super.initState();
  }

  Future<void> getVerificationsList() async {
    var resp =
        await callApi(ApiClient.instance.matchIrecent(), doShowLoader: true);
    print("<===>${resp.toString()}");
    print("${resp?.let((it) => print(it))}");
    // resp?.let((it) => displayData.addAll(it));
    print("displayData => ${displayData.length}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      /*body:displayData.isNullOrNotEmpty? ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: displayData.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(
              displayData[index].matchDetails!.tma!.map((e) => e.ainFirst!.map((e) => e.ainFirstInfo!.ord)).toString());
        },
      ):const Center(
        child: CircularProgressIndicator(),
      ),*/
    );
  }
}
