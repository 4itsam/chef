import 'package:login/gen/assets.gen.dart';

class Categories {
  String image;
  String text;

  Categories({required this.text, required this.image});

  static List<Categories> getCategories() {
    List<Categories> categories = [];

    categories.add(
      Categories(text: "Breack Fast", image: Assets.images.breakfast.path),
    );
    categories.add(Categories(text: "Salad", image: Assets.images.salad.path));

    categories.add(Categories(text: "Lunch", image: Assets.images.lunch.path));

    categories.add(
      Categories(text: "Breack Fast", image: Assets.images.breakfast.path),
    );
    categories.add(Categories(text: "Salad", image: Assets.images.salad.path));
    categories.add(Categories(text: "Lunch", image: Assets.images.lunch.path));
    categories.add(
      Categories(text: "Breack Fast", image: Assets.images.breakfast.path),
    );
    categories.add(Categories(text: "Salad", image: Assets.images.salad.path));
    categories.add(Categories(text: "Lunch", image: Assets.images.lunch.path));
    return categories;
  }
}
