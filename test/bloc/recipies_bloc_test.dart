// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:recipies_app/bloc/recipies_bloc.dart';
// import 'package:recipies_app/models/meal_model.dart';

// void main() async {
//   await dotenv.load(fileName: "assets/env/.env.dev");

//   MealsModel mealModelMock = MealsModel(
//     meals: [
//       Meal(
//         idMeal: '52771',
//         strMeal: 'Spicy Arrabiata Penne',
//         strCategory: 'Vegetarian',
//         strArea: 'Italian',
//         strInstructions:
//             'Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.',
//         strMealThumb:
//             'https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg',
//         strTags: 'Pasta,Curry',
//         strYoutube: 'https://www.youtube.com/watch?v=1IszT_guI08',
//         strIngredient1: 'penne rigate',
//         strIngredient2: 'olive oil',
//         strIngredient3: 'garlic',
//         strIngredient4: 'chopped tomatoes',
//         strIngredient5: 'red chile flakes',
//         strIngredient6: 'italian seasoning',
//         strIngredient7: 'basil',
//         strIngredient8: 'black pepper',
//         strIngredient9: 'salt',
//         strIngredient10: 'water',
//         strIngredient11: '',
//         strIngredient12: '',
//         strIngredient13: '',
//         strIngredient14: '',
//         strIngredient15: '',
//         strIngredient16: null,
//         strIngredient17: null,
//         strIngredient18: null,
//         strIngredient19: null,
//         strIngredient20: null,
//         strMeasure1: '1 pound',
//         strMeasure2: '1/4 cup',
//         strMeasure3: '3 cloves',
//         strMeasure4: '1 tin',
//         strMeasure5: '1/2 teaspoon',
//         strMeasure6: '1 teaspoon',
//         strMeasure7: '6 leaves',
//         strMeasure8: '1/2 teaspoon',
//         strMeasure9: 'to taste',
//         strMeasure10: null,
//         strMeasure11: null,
//         strMeasure12: null,
//         strMeasure13: null,
//         strMeasure14: null,
//         strMeasure15: null,
//         strMeasure16: null,
//         strMeasure17: null,
//         strMeasure18: null,
//         strMeasure19: null,
//         strMeasure20: null,
//         strSource: 'Serious Eats',
//         dateModified: '2016-09-02 23:33:33',
//       ),
//     ],
//   );

//   group('SearchMealByNameEvent', () {
//     blocTest<RecipiesBloc, RecipiesState>(
//       'should emits loadingStarted and loadedSucces states when SearchByNameEvent',
//       build: () => RecipiesBloc(),
//       act: (RecipiesBloc bloc) =>
//           bloc.add(SearchMealByNameEvent(name: 'Arrabiata')),
//       expect: () => [
//         RecipiesState.loadingStarted(),
//         RecipiesState.loadedSuccess(mealModelMock),
//       ],
//     );
//   });
// }
