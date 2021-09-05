import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/generated/l10n.dart';
import 'package:live_score/res/colors.dart';
import 'package:live_score/ui/homepage/homepage_logic.dart';
import 'package:live_score/widgets/widgets.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final HomepageLogic homepageLogic = Get.put(HomepageLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText.regular(
              S.of(context).cricket,
              size: 16,
              color: AppColor.grey,
            ),
            CommonText.semiBold(
              S.of(context).sportLight,
              size: 24,
              color: AppColor.black,
            ),
          ],
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
        itemBuilder: (context, index) => const RecentMatchCard(),
        separatorBuilder: (context, index) => const SizeBoxH(8),
        itemCount: 5,
      ),
      /*SingleChildScrollView(
        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
        child: Column(
          children: [
            Container(
              height: Get.size.height * 0.1,
              width: Get.size.width,
              child: CarouselSliderView(),
            ),
            SizeBoxH(24),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
              child: LiveCricketCard(),
            ),
          ],
        ),
      ),*/
    );
  }
}

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CarouselSliderView extends StatelessWidget {
  CarouselSliderView({Key? key}) : super(key: key);

  final HomepageLogic controller = Get.put(HomepageLogic());

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) {
        return CarouselSliderCard(
          firstImage: controller.upComingMatchList[index].firstCountryFlag,
          secondImage: controller.upComingMatchList[index].secondCountryFlag,
          firstName: controller.upComingMatchList[index].firstCountryName,
          secondName: controller.upComingMatchList[index].secondCountryName,
          dateTime: controller.upComingMatchList[index].dateTime,
        );
      },
      options: CarouselOptions(
        height: 400,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          controller.currentIndex.value = index;
        },
        scrollDirection: Axis.horizontal,
      ),
      itemCount: controller.upComingMatchList.length,
    );
  }
}

class CarouselSliderCard extends StatelessWidget {
  String firstImage;
  String secondImage;
  String firstName;
  String secondName;
  String dateTime;

  CarouselSliderCard(
      {Key? key,
      required this.firstImage,
      required this.secondImage,
      required this.firstName,
      required this.secondName,
      required this.dateTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48),
        border: Border.all(
          color: AppColor.black,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(firstImage),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  CommonText.semiBold(
                    firstName,
                    size: 15,
                  ),
                  SizeBoxV(24),
                  const CommonText.regular(
                    "vs",
                    size: 14,
                  ),
                  SizeBoxV(24),
                  CommonText.semiBold(
                    secondName,
                    size: 16,
                  ),
                ],
              ),
              CommonText.regular(
                dateTime,
                size: 14,
              )
            ],
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(secondImage),
          ),
        ],
      ),
    );
  }
}

class LiveCricketCard extends StatelessWidget {
  const LiveCricketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height * 0.4,
      width: Get.size.width,
      decoration: BoxDecoration(
        color: AppColor.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: AppColor.grey,
                  ),
                  child: const CommonText.medium(
                    "Zimbabwe vs Ireland",
                    size: 12,
                    color: AppColor.white,
                  ),
                ),
              ],
            ),
          ),
          const CommonText.medium(
            "IRL vs ZWE",
            color: AppColor.white,
            size: 13,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CommonDivider(
              height: 4,
              thickNess: 0.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.circle,
                      color: AppColor.white,
                      size: 18,
                    ),
                    SizeBoxV(4),
                    CommonText.bold(
                      "LIVE",
                      size: 12,
                      color: AppColor.white,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    CommonText.semiBold(
                      "T20",
                      size: 12,
                      color: AppColor.white,
                    ),
                    SizeBoxV(),
                    CommonText.semiBold(
                      "#4",
                      size: 12,
                      color: AppColor.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Container(
                width: Get.size.width * 0.5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizeBoxV(8),
                      const CommonText.semiBold(
                        "ZWE inngs",
                        size: 12,
                        color: AppColor.white,
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      CommonText.bold(
                        "97",
                        size: 30,
                        color: AppColor.greenLight,
                      ),
                      CommonText.bold(
                        "/",
                        size: 30,
                        color: AppColor.white,
                      ),
                      CommonText.bold(
                        "5",
                        color: AppColor.red,
                        size: 30,
                      ),
                    ],
                  ),
                  const CommonText.medium(
                    "12.5 over",
                    color: AppColor.orange,
                    size: 14,
                    height: 1,
                  ),
                  Row(
                    children: const [
                      CommonText.medium(
                        "CRR 7.81",
                        size: 12,
                        color: AppColor.white,
                      ),
                      SizeBoxV(8),
                      CommonText.medium(
                        "RRR 7.81",
                        size: 12,
                        color: AppColor.white,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CommonText.semiBold(
                "IRL: ",
                color: AppColor.white,
                size: 14,
              ),
              CommonText.semiBold(
                "178",
                color: AppColor.greenLight,
                size: 14,
              ),
              CommonText.semiBold(
                "/",
                color: AppColor.white,
                size: 14,
              ),
              CommonText.semiBold(
                "2 ",
                color: AppColor.red,
                size: 14,
              ),
              CommonText.semiBold(
                "(20.0)",
                color: AppColor.orange,
                size: 14,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const CommonText.medium(
                      "IND",
                      size: 14.0,
                      color: AppColor.white,
                    ),
                    Row(
                      children: [
                        CommonText.medium(
                          "191",
                          color: AppColor.greenLight,
                          size: 14,
                        ),
                        CommonText.medium(
                          "/",
                          color: AppColor.white,
                          size: 14,
                        ),
                        CommonText.medium(
                          "10",
                          color: AppColor.red,
                          size: 14,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    CommonText.medium(
                      "IND",
                      size: 14.0,
                      color: AppColor.white,
                    ),
                    Row(
                      children: [
                        CommonText.medium(
                          "191",
                          color: AppColor.greenLight,
                          size: 14,
                        ),
                        CommonText.medium(
                          "/",
                          color: AppColor.white,
                          size: 14,
                        ),
                        CommonText.medium(
                          "10",
                          color: AppColor.red,
                          size: 14,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class CommonDivider extends StatelessWidget {
  double? height;
  double? thickNess;

  CommonDivider({Key? key, this.height, this.thickNess}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColor.greyLight,
      height: height ?? 8,
      thickness: thickNess ?? 1,
    );
  }
}

class RecentMatchCard extends StatelessWidget {
  const RecentMatchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColor.greyLight,
                borderRadius: BorderRadius.circular(48),
              ),
              child: const Text("CP LEAGUE 2021"),
            ),
            const CommonText.regular("T20 #16 | 15hour ago"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    ),
                    SizeBoxH(),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    ),
                    CommonText.semiBold(
                      "BR",
                      size: 14,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    CommonText.semiBold(
                      "130/10",
                      size: 20,
                    ),
                    CommonText.medium("20 Overs"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CommonText.semiBold(
                      "130/10",
                      size: 20,
                    ),
                    CommonText.medium("14.2 Overs"),
                  ],
                ),
                Column(
                  children: const [
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    ),
                    SizeBoxH(),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/3476860/pexels-photo-3476860.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    ),
                    CommonText.semiBold(
                      "BR",
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
            SizeBoxH(),
            CommonText.regular(
              "Ga Warriors won by 9 wickets",
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
