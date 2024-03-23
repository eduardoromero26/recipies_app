class MealCategoriesModel {
  final Map<String, dynamic> categories;

  MealCategoriesModel({
    required this.categories,
  });

  factory MealCategoriesModel.fromJson(Map<String, dynamic> json) {
    return MealCategoriesModel(
      categories: json['categories'],
    );
  }
}

class MealCategory {
  MealCategory({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });
  late final String idCategory;
  late final String strCategory;
  late final String strCategoryThumb;
  late final String strCategoryDescription;

  MealCategory.fromJson(Map<String, dynamic> json) {
    idCategory = json['idCategory'];
    strCategory = json['strCategory'];
    strCategoryThumb = json['strCategoryThumb'];
    strCategoryDescription = json['strCategoryDescription'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['idCategory'] = idCategory;
    _data['strCategory'] = strCategory;
    _data['strCategoryThumb'] = strCategoryThumb;
    _data['strCategoryDescription'] = strCategoryDescription;
    return _data;
  }
}
