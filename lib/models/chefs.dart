import 'package:login/gen/assets.gen.dart';

class Chefs {
  String name;
  String? image;
  double rate;

  Chefs({required this.name, this.image,required this.rate});

  static List<Chefs> getChefs() {
    List<Chefs> chefs = [];

    chefs.add(Chefs(name: "Ali Miri", image: Assets.icons.feilledProfile.path,rate: 4.7));

    chefs.add(Chefs(name: "Iman safari",rate: 4.6));

    chefs.add(
      Chefs(name: "Anas Miri", image: Assets.icons.feilledProfile.path,rate: 4.3),
    );

    chefs.add(
      Chefs(name: "Monem Miri", image: Assets.icons.feilledProfile.path,rate: 4.0),
    );

    chefs.add(Chefs(name: "sasan ghaderi",rate: 4.2));
    return chefs;
  }
}
