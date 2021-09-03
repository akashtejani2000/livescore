import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<AllMealPlanModel> allMealPlanModelFromJson(String str) =>
    List<AllMealPlanModel>.from(
        json.decode(str).map((x) => AllMealPlanModel.fromJson(x)));

String allMealPlanModelToJson(List<AllMealPlanModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllMealPlanModel {
  AllMealPlanModel({
    this.id,
    this.dailyAllowanceActualPercentage,
    this.dailyCaloriesFromThisMealPlan,
    this.imperialWeightOfOneMeal,
    this.mealIngredientsWouldMake,
    this.mealsPerDay,
    this.nutrientValue,
    this.petName,
    this.showWeightOfBalancedMeal,
    this.suggestion,
    this.totalCaloriesInAMealPlan,
    this.totalImperialWeightOfAMealPlan,
    this.totalWeightOfAMealPlan,
    this.weightOfOneMeal,
    this.feedingPlanDetails,
  });

  int? id;
  DailyAllowanceActualPercentage? dailyAllowanceActualPercentage;
  double? dailyCaloriesFromThisMealPlan;
  double? imperialWeightOfOneMeal;
  int? mealIngredientsWouldMake;
  int? mealsPerDay;
  List<NutrientValue>? nutrientValue;
  String? petName;
  bool? showWeightOfBalancedMeal;
  Suggestion? suggestion;
  int? totalCaloriesInAMealPlan;
  double? totalImperialWeightOfAMealPlan;
  int? totalWeightOfAMealPlan;
  double? weightOfOneMeal;
  List<FeedingPlanDetail>? feedingPlanDetails;

  factory AllMealPlanModel.fromJson(Map<String, dynamic> json) =>
      AllMealPlanModel(
        id: json["id"],
        dailyAllowanceActualPercentage: DailyAllowanceActualPercentage.fromJson(
            json["daily_allowance_actual_percentage"]),
        dailyCaloriesFromThisMealPlan:
            json["daily_calories_from_this_meal_plan"].toDouble(),
        imperialWeightOfOneMeal: json["imperial_weight_of_one_meal"].toDouble(),
        mealIngredientsWouldMake: json["meal_ingredients_would_make"],
        mealsPerDay: json["meals_per_day"],
        nutrientValue: List<NutrientValue>.from(
            json["nutrient_value"].map((x) => NutrientValue.fromJson(x))),
        petName: json["pet_name"],
        showWeightOfBalancedMeal: json["show_weight_of_balanced_meal"],
        suggestion: Suggestion.fromJson(json["suggestion"]),
        totalCaloriesInAMealPlan: json["total_calories_in_a_meal_plan"],
        totalImperialWeightOfAMealPlan:
            json["total_imperial_weight_of_a_meal_plan"].toDouble(),
        totalWeightOfAMealPlan: json["total_weight_of_a_meal_plan"],
        weightOfOneMeal: json["weight_of_one_meal"].toDouble(),
        feedingPlanDetails: List<FeedingPlanDetail>.from(
            json["feeding_plan_details"]
                .map((x) => FeedingPlanDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "daily_allowance_actual_percentage":
            dailyAllowanceActualPercentage!.toJson(),
        "daily_calories_from_this_meal_plan": dailyCaloriesFromThisMealPlan,
        "imperial_weight_of_one_meal": imperialWeightOfOneMeal,
        "meal_ingredients_would_make": mealIngredientsWouldMake,
        "meals_per_day": mealsPerDay,
        "nutrient_value":
            List<dynamic>.from(nutrientValue!.map((x) => x.toJson())),
        "pet_name": petName,
        "show_weight_of_balanced_meal": showWeightOfBalancedMeal,
        "suggestion": suggestion!.toJson(),
        "total_calories_in_a_meal_plan": totalCaloriesInAMealPlan,
        "total_imperial_weight_of_a_meal_plan": totalImperialWeightOfAMealPlan,
        "total_weight_of_a_meal_plan": totalWeightOfAMealPlan,
        "weight_of_one_meal": weightOfOneMeal,
        "feeding_plan_details":
            List<dynamic>.from(feedingPlanDetails!.map((x) => x.toJson())),
      };
}

class DailyAllowanceActualPercentage {
  DailyAllowanceActualPercentage({
    this.bone,
    this.muscleMeat,
    this.fruitAndVeg,
  });

  List<dynamic>? bone;
  List<dynamic>? muscleMeat;
  List<dynamic>? fruitAndVeg;

  factory DailyAllowanceActualPercentage.fromJson(Map<String, dynamic> json) =>
      DailyAllowanceActualPercentage(
        bone: List<dynamic>.from(json["Bone"].map((x) => x)),
        muscleMeat: List<dynamic>.from(json["Muscle Meat"].map((x) => x)),
        fruitAndVeg: List<dynamic>.from(json["Fruit and Veg"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "Bone": List<dynamic>.from(bone!.map((x) => x)),
        "Muscle Meat": List<dynamic>.from(muscleMeat!.map((x) => x)),
        "Fruit and Veg": List<dynamic>.from(fruitAndVeg!.map((x) => x)),
      };
}

class FeedingPlanDetail {
  FeedingPlanDetail({
    this.id,
    this.imperialQuantity,
    this.quantity,
    this.food,
  });

  int? id;
  double? imperialQuantity;
  int? quantity;
  Food? food;

  factory FeedingPlanDetail.fromJson(Map<String, dynamic> json) =>
      FeedingPlanDetail(
        id: json["id"],
        imperialQuantity: json["imperial_quantity"].toDouble(),
        quantity: json["quantity"],
        food: Food.fromJson(json["food"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "imperial_quantity": imperialQuantity,
        "quantity": quantity,
        "food": food!.toJson(),
      };
}

class Food {
  Food({
    this.id,
    this.bonePercentage,
    this.calciumPhosphorousRatio,
    this.name,
    this.omegaRatio,
    this.omegaRatioColor,
    this.calciumPhosphorousRatioColor,
  });

  int? id;
  int? bonePercentage;
  double? calciumPhosphorousRatio;
  String? name;
  double? omegaRatio;
  String? omegaRatioColor;
  String? calciumPhosphorousRatioColor;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        bonePercentage: json["bone_percentage"],
        calciumPhosphorousRatio: json["calcium_phosphorous_ratio"].toDouble(),
        name: json["name"],
        omegaRatio: json["omega_ratio"].toDouble(),
        omegaRatioColor: json["omega_ratio_color"],
        calciumPhosphorousRatioColor: json["calcium_phosphorous_ratio_color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bone_percentage": bonePercentage,
        "calcium_phosphorous_ratio": calciumPhosphorousRatio,
        "name": name,
        "omega_ratio": omegaRatio,
        "omega_ratio_color": omegaRatioColor,
        "calcium_phosphorous_ratio_color": calciumPhosphorousRatioColor,
      };
}

class NutrientValue {
  NutrientValue({
    this.calcium,
    this.choline,
    this.copper,
    this.crudeFat,
    this.folate,
    this.iodine,
    this.iron,
    this.magnesium,
    this.manganese,
    this.niacinB3,
    this.omega3ExclAlaAndSda,
    this.omega6,
    this.pantothenicAcidB5,
    this.phosphorus,
    this.potassium,
    this.protein,
    this.riboflavinB2,
    this.selenium,
    this.sodiumNa,
    this.thiaminB1,
    this.vitaminA,
    this.vitaminC,
    this.vitaminD,
    this.vitaminE,
    this.zincZn,
    this.calories,
  });

  List<dynamic>? calcium;
  List<dynamic>? choline;
  List<dynamic>? copper;
  List<dynamic>? crudeFat;
  List<dynamic>? folate;
  List<dynamic>? iodine;
  List<dynamic>? iron;
  List<dynamic>? magnesium;
  List<dynamic>? manganese;
  List<dynamic>? niacinB3;
  List<dynamic>? omega3ExclAlaAndSda;
  List<dynamic>? omega6;
  List<dynamic>? pantothenicAcidB5;
  List<dynamic>? phosphorus;
  List<dynamic>? potassium;
  List<dynamic>? protein;
  List<dynamic>? riboflavinB2;
  List<dynamic>? selenium;
  List<dynamic>? sodiumNa;
  List<dynamic>? thiaminB1;
  List<dynamic>? vitaminA;
  List<dynamic>? vitaminC;
  List<dynamic>? vitaminD;
  List<dynamic>? vitaminE;
  List<dynamic>? zincZn;
  List<dynamic>? calories;

  factory NutrientValue.fromJson(Map<String, dynamic> json) => NutrientValue(
        calcium: json["Calcium"] == null
            ? null
            : List<dynamic>.from(json["Calcium"].map((x) => x)),
        choline: json["Choline"] == null
            ? null
            : List<dynamic>.from(json["Choline"].map((x) => x)),
        copper: json["Copper"] == null
            ? null
            : List<dynamic>.from(json["Copper"].map((x) => x)),
        crudeFat: json["Crude fat"] == null
            ? null
            : List<dynamic>.from(json["Crude fat"].map((x) => x)),
        folate: json["Folate"] == null
            ? null
            : List<dynamic>.from(json["Folate"].map((x) => x)),
        iodine: json["Iodine"] == null
            ? null
            : List<dynamic>.from(json["Iodine"].map((x) => x)),
        iron: json["Iron"] == null
            ? null
            : List<dynamic>.from(json["Iron"].map((x) => x)),
        magnesium: json["Magnesium"] == null
            ? null
            : List<dynamic>.from(json["Magnesium"].map((x) => x)),
        manganese: json["Manganese"] == null
            ? null
            : List<dynamic>.from(json["Manganese"].map((x) => x)),
        niacinB3: json["Niacin (B3)"] == null
            ? null
            : List<dynamic>.from(json["Niacin (B3)"].map((x) => x)),
        omega3ExclAlaAndSda: json["Omega-3 excl. ALA and SDA"] == null
            ? null
            : List<dynamic>.from(
                json["Omega-3 excl. ALA and SDA"].map((x) => x)),
        omega6: json["Omega-6"] == null
            ? null
            : List<dynamic>.from(json["Omega-6"].map((x) => x)),
        pantothenicAcidB5: json["Pantothenic acid (B5)"] == null
            ? null
            : List<dynamic>.from(json["Pantothenic acid (B5)"].map((x) => x)),
        phosphorus: json["Phosphorus"] == null
            ? null
            : List<dynamic>.from(json["Phosphorus"].map((x) => x)),
        potassium: json["Potassium"] == null
            ? null
            : List<dynamic>.from(json["Potassium"].map((x) => x)),
        protein: json["Protein"] == null
            ? null
            : List<dynamic>.from(json["Protein"].map((x) => x)),
        riboflavinB2: json["Riboflavin (B2)"] == null
            ? null
            : List<dynamic>.from(json["Riboflavin (B2)"].map((x) => x)),
        selenium: json["Selenium"] == null
            ? null
            : List<dynamic>.from(json["Selenium"].map((x) => x)),
        sodiumNa: json["Sodium (Na)"] == null
            ? null
            : List<dynamic>.from(json["Sodium (Na)"].map((x) => x)),
        thiaminB1: json["Thiamin (B1)"] == null
            ? null
            : List<dynamic>.from(json["Thiamin (B1)"].map((x) => x)),
        vitaminA: json["Vitamin A"] == null
            ? null
            : List<dynamic>.from(json["Vitamin A"].map((x) => x)),
        vitaminC: json["Vitamin C"] == null
            ? null
            : List<dynamic>.from(json["Vitamin C"].map((x) => x)),
        vitaminD: json["Vitamin D"] == null
            ? null
            : List<dynamic>.from(json["Vitamin D"].map((x) => x)),
        vitaminE: json["Vitamin E"] == null
            ? null
            : List<dynamic>.from(json["Vitamin E"].map((x) => x)),
        zincZn: json["Zinc (Zn)"] == null
            ? null
            : List<dynamic>.from(json["Zinc (Zn)"].map((x) => x)),
        calories: json["Calories"] == null
            ? null
            : List<dynamic>.from(json["Calories"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "Calcium":
            calcium == null ? null : List<dynamic>.from(calcium!.map((x) => x)),
        "Choline":
            choline == null ? null : List<dynamic>.from(choline!.map((x) => x)),
        "Copper":
            copper == null ? null : List<dynamic>.from(copper!.map((x) => x)),
        "Crude fat": crudeFat == null
            ? null
            : List<dynamic>.from(crudeFat!.map((x) => x)),
        "Folate":
            folate == null ? null : List<dynamic>.from(folate!.map((x) => x)),
        "Iodine":
            iodine == null ? null : List<dynamic>.from(iodine!.map((x) => x)),
        "Iron": iron == null ? null : List<dynamic>.from(iron!.map((x) => x)),
        "Magnesium": magnesium == null
            ? null
            : List<dynamic>.from(magnesium!.map((x) => x)),
        "Manganese": manganese == null
            ? null
            : List<dynamic>.from(manganese!.map((x) => x)),
        "Niacin (B3)": niacinB3 == null
            ? null
            : List<dynamic>.from(niacinB3!.map((x) => x)),
        "Omega-3 excl. ALA and SDA": omega3ExclAlaAndSda == null
            ? null
            : List<dynamic>.from(omega3ExclAlaAndSda!.map((x) => x)),
        "Omega-6":
            omega6 == null ? null : List<dynamic>.from(omega6!.map((x) => x)),
        "Pantothenic acid (B5)": pantothenicAcidB5 == null
            ? null
            : List<dynamic>.from(pantothenicAcidB5!.map((x) => x)),
        "Phosphorus": phosphorus == null
            ? null
            : List<dynamic>.from(phosphorus!.map((x) => x)),
        "Potassium": potassium == null
            ? null
            : List<dynamic>.from(potassium!.map((x) => x)),
        "Protein":
            protein == null ? null : List<dynamic>.from(protein!.map((x) => x)),
        "Riboflavin (B2)": riboflavinB2 == null
            ? null
            : List<dynamic>.from(riboflavinB2!.map((x) => x)),
        "Selenium": selenium == null
            ? null
            : List<dynamic>.from(selenium!.map((x) => x)),
        "Sodium (Na)": sodiumNa == null
            ? null
            : List<dynamic>.from(sodiumNa!.map((x) => x)),
        "Thiamin (B1)": thiaminB1 == null
            ? null
            : List<dynamic>.from(thiaminB1!.map((x) => x)),
        "Vitamin A": vitaminA == null
            ? null
            : List<dynamic>.from(vitaminA!.map((x) => x)),
        "Vitamin C": vitaminC == null
            ? null
            : List<dynamic>.from(vitaminC!.map((x) => x)),
        "Vitamin D": vitaminD == null
            ? null
            : List<dynamic>.from(vitaminD!.map((x) => x)),
        "Vitamin E": vitaminE == null
            ? null
            : List<dynamic>.from(vitaminE!.map((x) => x)),
        "Zinc (Zn)":
            zincZn == null ? null : List<dynamic>.from(zincZn!.map((x) => x)),
        "Calories": calories == null
            ? null
            : List<dynamic>.from(calories!.map((x) => x)),
      };
}

class Suggestion {
  Suggestion({
    this.addFood,
    this.removeFood,
  });

  AddFood? addFood;
  RemoveFood? removeFood;

  factory Suggestion.fromJson(Map<String, dynamic> json) => Suggestion(
        addFood: AddFood.fromJson(json["add_food"]),
        removeFood: RemoveFood.fromJson(json["remove_food"]),
      );

  Map<String, dynamic> toJson() => {
        "add_food": addFood!.toJson(),
        "remove_food": removeFood!.toJson(),
      };
}

class AddFood {
  AddFood({
    this.yellow,
    this.red,
  });

  List<Yellow>? yellow;
  List<Map<String, List<String>>>? red;

  factory AddFood.fromJson(Map<String, dynamic> json) => AddFood(
        yellow:
            List<Yellow>.from(json["Yellow"].map((x) => Yellow.fromJson(x))),
        red: List<Map<String, List<String>>>.from(json["Red"].map((x) =>
            Map.from(x).map((k, v) => MapEntry<String, List<String>>(
                k, List<String>.from(v.map((x) => x)))))),
      );

  Map<String, dynamic> toJson() => {
        "Yellow": List<dynamic>.from(yellow!.map((x) => x.toJson())),
        "Red": List<dynamic>.from(red!.map((x) => Map.from(x).map((k, v) =>
            MapEntry<String, dynamic>(
                k, List<dynamic>.from(v.map((x) => x)))))),
      };
}

class Yellow {
  Yellow({
    this.calcium,
    this.phosphorus,
  });

  List<String>? calcium;
  List<String>? phosphorus;

  factory Yellow.fromJson(Map<String, dynamic> json) => Yellow(
        calcium: json["Calcium"] == null
            ? null
            : List<String>.from(json["Calcium"].map((x) => x)),
        phosphorus: json["Phosphorus"] == null
            ? null
            : List<String>.from(json["Phosphorus"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "Calcium":
            calcium == null ? null : List<dynamic>.from(calcium!.map((x) => x)),
        "Phosphorus": phosphorus == null
            ? null
            : List<dynamic>.from(phosphorus!.map((x) => x)),
      };
}

class RemoveFood {
  RemoveFood({
    this.yellow,
    this.red,
  });

  List<dynamic>? yellow;
  List<Red>? red;

  factory RemoveFood.fromJson(Map<String, dynamic> json) => RemoveFood(
        yellow: List<dynamic>.from(json["Yellow"].map((x) => x)),
        red: List<Red>.from(json["Red"].map((x) => Red.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Yellow": List<dynamic>.from(yellow!.map((x) => x)),
        "Red": List<dynamic>.from(red!.map((x) => x.toJson())),
      };
}

class Red {
  Red({
    this.magnesium,
    this.potassium,
    this.selenium,
  });

  List<String>? magnesium;
  List<String>? potassium;
  List<String>? selenium;

  factory Red.fromJson(Map<String, dynamic> json) => Red(
        magnesium: json["Magnesium"] == null
            ? null
            : List<String>.from(json["Magnesium"].map((x) => x)),
        potassium: json["Potassium"] == null
            ? null
            : List<String>.from(json["Potassium"].map((x) => x)),
        selenium: json["Selenium"] == null
            ? null
            : List<String>.from(json["Selenium"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "Magnesium": magnesium == null
            ? null
            : List<dynamic>.from(magnesium!.map((x) => x)),
        "Potassium": potassium == null
            ? null
            : List<dynamic>.from(potassium!.map((x) => x)),
        "Selenium": selenium == null
            ? null
            : List<dynamic>.from(selenium!.map((x) => x)),
      };
}

class Demo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage('Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(this.title);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Function _future;

  Future<List<AllMealPlanModel>> getAllMealPlanData(String item) async {
    String jsonString = '''
    [
  {
    "id": 7,
    "daily_allowance_actual_percentage": {
      "Bone": [
        0.01,
        "Red"
      ],
      "Muscle Meat": [
        46.15,
        "Red"
      ],
      "Fruit and Veg": [
        53.84,
        "Red"
      ]
    },
    "daily_calories_from_this_meal_plan": 823.25,
    "imperial_weight_of_one_meal": 5.732025,
    "meal_ingredients_would_make": 8,
    "meals_per_day": 2,
    "nutrient_value": [
      {
        "Calcium": [
          249.5,
          "mg",
          "Yellow",
          0.008800863,
          "ounce"
        ]
      },
      {
        "Choline": [
          203.65,
          "mg",
          "Green",
          0.0071835501,
          "ounce"
        ]
      },
      {
        "Copper": [
          1.33,
          "mg",
          "Green",
          0.00004691442,
          "ounce"
        ]
      },
      {
        "Crude fat": [
          29.75,
          "g",
          "Green",
          1.0494015,
          "ounce"
        ]
      },
      {
        "Folate": [
          469,
          "mcg",
          "Green",
          0.000016543506,
          "ounce"
        ]
      },
      {
        "Iodine": [
          2.1,
          "mcg",
          "Red",
          7.40754e-8,
          "ounce"
        ]
      },
      {
        "Iron": [
          11.77,
          "mg",
          "Green",
          0.00041517497999999997,
          "ounce"
        ]
      },
      {
        "Magnesium": [
          253,
          "mg",
          "Red",
          0.008924322,
          "ounce"
        ]
      },
      {
        "Manganese": [
          1.82,
          "mg",
          "Green",
          0.00006419868,
          "ounce"
        ]
      },
      {
        "Niacin (B3)": [
          11.88,
          "mg",
          "Green",
          0.00041905512,
          "ounce"
        ]
      },
      {
        "Omega-3 excl. ALA and SDA": [
          0.03,
          "g",
          "Green",
          0.00105822,
          "ounce"
        ]
      },
      {
        "Omega-6": [
          0.93,
          "g",
          "Green",
          0.03280482,
          "ounce"
        ]
      },
      {
        "Pantothenic acid (B5)": [
          1.7,
          "mg",
          "Green",
          0.000059965799999999994,
          "ounce"
        ]
      },
      {
        "Phosphorus": [
          800,
          "mg",
          "Yellow",
          0.0282192,
          "ounce"
        ]
      },
      {
        "Potassium": [
          2766.5,
          "mg",
          "Red",
          0.09758552100000001,
          "ounce"
        ]
      },
      {
        "Protein": [
          56.02,
          "g",
          "Green",
          1.9760494800000001,
          "ounce"
        ]
      },
      {
        "Riboflavin (B2)": [
          0.54,
          "mg",
          "Green",
          0.00001904796,
          "ounce"
        ]
      },
      {
        "Selenium": [
          39.05,
          "mcg",
          "Red",
          0.0000013774497,
          "ounce"
        ]
      },
      {
        "Sodium (Na)": [
          123,
          "mg",
          "Green",
          0.004338702,
          "ounce"
        ]
      },
      {
        "Thiamin (B1)": [
          0.78,
          "mg",
          "Green",
          0.00002751372,
          "ounce"
        ]
      },
      {
        "Vitamin A": [
          4.2,
          "mcg",
          "Red",
          1.481508e-7,
          "ounce"
        ]
      },
      {
        "Vitamin C": [
          1.75,
          "mg",
          "Green",
          0.0000617295,
          "ounce"
        ]
      },
      {
        "Vitamin D": [
          0.15,
          "mcg",
          "Red",
          5.2911000000000005e-9,
          "ounce"
        ]
      },
      {
        "Vitamin E": [
          1.03,
          "mg",
          "Red",
          0.000036332220000000006,
          "ounce"
        ]
      },
      {
        "Zinc (Zn)": [
          8.24,
          "mg",
          "Green",
          0.00029065776000000005,
          "ounce"
        ]
      },
      {
        "Calories": [
          823.25,
          "cal",
          null,
          "N/A",
          "ounce"
        ]
      }
    ],
    "pet_name": "grover",
    "show_weight_of_balanced_meal": false,
    "suggestion": {
      "add_food": {
        "Yellow": [
          {
            "Calcium": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Phosphorus": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          }
        ],
        "Red": [
          {
            "Iodine": [
              "Amaranth, grain, whole, uncooked",
              "Apricot, dried"
            ]
          },
          {
            "Vitamin A": [
              "Bean, edamame, from frozen, cooked",
              "Beef Brain"
            ]
          },
          {
            "Vitamin D": [
              "Beef kidney, raw",
              "Beef liver, raw"
            ]
          },
          {
            "Vitamin E": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Choline": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Copper": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Crude fat": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Folate": [
              "Amaranth, grain, whole, uncooked",
              "Apple, fuji, unpeeled, raw"
            ]
          },
          {
            "Iron": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Manganese": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Niacin (B3)": [
              "Apple, fuji, unpeeled, raw",
              "Apple, golden delicious, unpeeled, raw"
            ]
          },
          {
            "Omega-3 excl. ALA and SDA": [
              "Bass, fillet, raw",
              "Beef Brain"
            ]
          },
          {
            "Omega-6": [
              "Amaranth, grain, whole, uncooked",
              "Avocado, raw"
            ]
          },
          {
            "Pantothenic acid (B5)": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Protein": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Riboflavin (B2)": [
              "Amaranth, grain, whole, uncooked",
              "Apple, fuji, unpeeled, raw"
            ]
          },
          {
            "Sodium (Na)": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          },
          {
            "Thiamin (B1)": [
              "Amaranth, grain, whole, uncooked",
              "Apple, fuji, unpeeled, raw"
            ]
          },
          {
            "Zinc (Zn)": [
              "Amaranth, grain, whole, uncooked",
              "Apple, dried"
            ]
          }
        ]
      },
      "remove_food": {
        "Yellow": [],
        "Red": [
          {
            "Magnesium": [
              "Beef, all cuts, untrimmed, raw, no bone",
              "Apricot, dried"
            ]
          },
          {
            "Potassium": [
              "Beef, all cuts, untrimmed, raw, no bone",
              "Apricot, dried"
            ]
          },
          {
            "Selenium": [
              "Beef, all cuts, untrimmed, raw, no bone",
              "Apricot, dried"
            ]
          }
        ]
      }
    },
    "total_calories_in_a_meal_plan": 3293,
    "total_imperial_weight_of_a_meal_plan": 45.8562,
    "total_weight_of_a_meal_plan": 1300,
    "weight_of_one_meal": 162.5,
    "feeding_plan_details": [
      {
        "id": 23,
        "imperial_quantity": 14.1096,
        "quantity": 400,
        "food": {
          "id": 5,
          "bone_percentage": 0,
          "calcium_phosphorous_ratio": 0.14,
          "name": "Beef, all cuts, untrimmed, raw, no bone",
          "omega_ratio": 0,
          "omega_ratio_color": "Red",
          "calcium_phosphorous_ratio_color": "Red"
        }
      },
      {
        "id": 24,
        "imperial_quantity": 7.0548,
        "quantity": 200,
        "food": {
          "id": 45,
          "bone_percentage": 0,
          "calcium_phosphorous_ratio": 0.56,
          "name": "Apricot, dried",
          "omega_ratio": 0,
          "omega_ratio_color": "Red",
          "calcium_phosphorous_ratio_color": "Yellow"
        }
      },
      {
        "id": 25,
        "imperial_quantity": 17.637,
        "quantity": 500,
        "food": {
          "id": 222,
          "bone_percentage": 0,
          "calcium_phosphorous_ratio": 0.38,
          "name": "Bean, haricot, dried",
          "omega_ratio": 0,
          "omega_ratio_color": "Red",
          "calcium_phosphorous_ratio_color": "Red"
        }
      },
      {
        "id": 26,
        "imperial_quantity": 7.0548,
        "quantity": 200,
        "food": {
          "id": 294,
          "bone_percentage": 0,
          "calcium_phosphorous_ratio": 0.08,
          "name": "Pork, all cuts, lean, raw",
          "omega_ratio": 0.09,
          "omega_ratio_color": "Yellow",
          "calcium_phosphorous_ratio_color": "Red"
        }
      }
    ]
  }
]
    ''';

    http.Response response = http.Response(jsonString, 200);
    if (response.statusCode == 200) {
      return allMealPlanModelFromJson(response.body);
    }
    return allMealPlanModelFromJson(response.body);
  }

  @override
  void initState() {
    _future = getAllMealPlanData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
            future: _future("your item"),
            builder: (context, AsyncSnapshot<List<AllMealPlanModel>> snapshot) {
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
                    return ListView.separated(
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(snapshot.data![index].id.toString()),
                                    Container(
                                      //height: 50,
                                      child: ListView.separated(
                                          separatorBuilder:
                                              (BuildContext context,
                                                  int index) {
                                            return SizedBox(
                                              width: 10,
                                            );
                                          },
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: snapshot.data![index]
                                              .feedingPlanDetails!.length,
                                          itemBuilder: (context, index1) {
                                            return Row(
                                              children: <Widget>[
                                                Text(
                                                    "food: ${snapshot.data![index].feedingPlanDetails![index1].food!.name}"),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                    "quantity: ${snapshot.data![index].feedingPlanDetails![index1].quantity.toString()}"),
                                                Text(
                                                    "quantity: ${snapshot.data![index].dailyAllowanceActualPercentage!.bone}"),
                                              ],
                                            );
                                          }),
                                    )
                                  ])
                            ],
                          );
                        });
                  }
              }
            }));
  }
}
