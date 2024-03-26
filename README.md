## Recipies App

1.- BLoC (RecipiesBloc): Este BLoC maneja la lógica de negocio para la búsqueda de recetas. Procesa eventos como SearchMealByNameEvent y emite estados correspondientes para indicar el progreso de la búsqueda.

2.- Estados (RecipiesState): Los estados representan las diferentes etapas de la búsqueda de recetas. Los estados incluyen loadingStarted, loadedSuccess y loadedFailed, cada uno generado por Freezed para garantizar la inmutabilidad.

3.- Modelo (MealModel): Este modelo representa una receta individual. Contiene campos para los detalles de la receta, como el nombre, los ingredientes y las instrucciones.

4.- Servicio Base API (BaseApi): Este servicio utiliza Dio para realizar solicitudes a la API de recetas. Se encarga de buscar recetas por nombre y devolver los resultados como una lista de objetos MealModel.

5.- Pruebas: Las pruebas en este repositorio utilizan Mockito para simular el servicio BaseApi y Flutter BLoC Test para probar el RecipiesBloc. Verifican que el BLoC emite los estados correctos en respuesta a los eventos y maneja correctamente los errores de la API.

6.- Widgets personalizados: La aplicación contiene varios widgets personalizados diseñados para satisfacer las necesidades específicas de la aplicación. Entre ellos se incluyen MealBlocBuilder para construir la interfaz de usuario en respuesta a los cambios de estado del BLoC y los widgets Lottie para mostrar animaciones avanzadas. Estos widgets ayudan a proporcionar una experiencia de usuario única y a mantener el código de la aplicación limpio y modular.

7.- Screens: Las screens de la aplicación incluyen HomeScreen, que muestra los resultados de la búsqueda de recetas utilizando Slivers para un desplazamiento eficiente, y RecipeDetailScreen, que muestra los detalles de una receta individual.