import 'package:login/gen/assets.gen.dart';

class Chefs {
  String name;
  String? image;

  Chefs({required this.name, this.image});

  static List<Chefs> getChefs() {
    List<Chefs> chefs = [];

    chefs.add(Chefs(name: "Ali Miri", image: Assets.icons.feilledProfile.path));

    chefs.add(Chefs(name: "Iman safari"));

        chefs.add(Chefs(name: "Anas Miri", image: Assets.icons.feilledProfile.path));

            chefs.add(Chefs(name: "Monem Miri", image: Assets.icons.feilledProfile.path));


    chefs.add(Chefs(name: "sasan ghaderi"));
    return chefs;
  }
}
