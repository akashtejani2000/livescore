import 'package:http/http.dart' as http;
import 'package:live_score/model/class.dart';

class Services {
  static const String url =
      'http://sc.cricitch.com/st_files/matches_irecent.json?ts=846';

  getUser() async {
    MatchesIrecent? user;
    final response = await http.get(Uri.parse(url));
    print('hello11111');
    if (200 == response.statusCode) {
      print('hello');
      print('hello-${response.statusCode}');
      print('hello-${response.body}');
      // final List<MatchesIrecent> user = await matchesIrecentFromJson(response.body) as List<MatchesIrecent>;
      user = await matchesIrecentFromJson(response.body);
      print('user------>${user.ciRslt!.mch![0].evt![0].evt}');
    }
    return user;
  }
}
