
import 'package:flutter/material.dart';

class Demo1 extends StatefulWidget {
  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  // final List<MatchesIrecent> listKycVerification = [];

  @override
  void initState() {
    super.initState();
  }

/*  Future<void> getVerificationsList() async {
    var resp = await callApi(ApiClient.instance.matchIrecent());
    resp?.let((it) => listKycVerification.addAll(it));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User List'),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: const [
                  Text(""),
                ],
              ),
            );
          },
        ));
  }
}
