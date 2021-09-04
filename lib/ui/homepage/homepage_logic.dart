import 'package:get/get.dart';

class HomepageLogic extends GetxController {
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  List<UpcomingMatchModel> upComingMatchList = [
    UpcomingMatchModel(
        firstCountryFlag:
            "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        secondCountryFlag:
            "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        firstCountryName: "INDIA",
        secondCountryName: "INDIA",
        dateTime: "21^th sep 21"),
    UpcomingMatchModel(
        firstCountryFlag:
            "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        secondCountryFlag:
            "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        firstCountryName: "INDIA",
        secondCountryName: "INDIA",
        dateTime: "21^th sep 21"),
  ];
}

class UpcomingMatchModel {
  String firstCountryFlag;
  String secondCountryFlag;
  String firstCountryName;
  String secondCountryName;
  String dateTime;

  UpcomingMatchModel({
    required this.firstCountryFlag,
    required this.secondCountryFlag,
    required this.firstCountryName,
    required this.secondCountryName,
    required this.dateTime,
  });
}
