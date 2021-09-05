import 'package:http/http.dart' as http;
import 'package:live_score/model/class.dart';

class Services {
  static const String url =
      'http://sc.cricitch.com/st_files/matches_irecent.json?ts=846';

  MatchesIrecent? user;

  getUser() async {
    final response = await http.get(Uri.parse(url));
    if (200 == response.statusCode) {
      user = matchesIrecentFromJson(response.body);
    }
    return user;
  }
}
