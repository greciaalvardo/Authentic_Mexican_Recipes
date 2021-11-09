import 'package:authentic_mexican_recipes/models/recipe_info.dart';
import './models/category_info.dart';

const CATEGORIES = const [
  Category(
    id: 'c1',
    title: '  Breakfast  ',
    pic: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/04_Huevos_Rancheros_-_Mesa_Coyoacan.jpg/640px-04_Huevos_Rancheros_-_Mesa_Coyoacan.jpg",
  ),
  Category(
    id: 'c2',
    title: '  Lunch & Dinner  ',
    pic: "https://images.unsplash.com/photo-1552332386-f8dd00dc2f85?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80",
  ),
  Category(
    id: 'c3',
    title: '  Drinks  ',
    pic: "https://images.pexels.com/photos/8064102/pexels-photo-8064102.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ),
  Category(
    id: 'c4',
    title: '  Dessert  ',
    pic: "https://cdn.pixabay.com/photo/2019/10/13/12/12/pudding-4545945_1280.jpg",
  ),
  Category(
    id: 'c5',
    title: '  Christmas  ',
    pic: "https://cdn.pixabay.com/photo/2019/09/25/16/29/tamale-4504061_1280.jpg",
  ),
  Category(
    id: 'c6',
    title: '  New Years  ',
    pic: "https://cdn.pixabay.com/photo/2017/10/05/18/08/pozole-2820341_1280.jpg",
  ),
  Category(
    id: 'c7',
    title: '  Dia de Los Muertos  ',
    pic: "https://images.unsplash.com/photo-1635878793545-f8e2d3773ec0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1452&q=80",
  ),
  Category(
    id: 'c8',
    title: '  Semana Santa  ',
    pic: "https://images.unsplash.com/photo-1613585537077-cc9fcc5c14b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2070&q=80",
  ),
];

const CATEGORY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c2',
      'c5',
      'c6',
    ],
    title: 'Tamales Rojos - Pork',
    imageUrl:
    'https://cdn.pixabay.com/photo/2019/09/25/16/29/tamale-4504061_1280.jpg',
    duration: 300,
    cookMethods: 'Stovetop, blender',
    ingredients: [
      '7 lbs masa',
      '3 lb puerco mazica (or shoulder or leg)',
      '1 large bag of Chili California',
      '2 garlic heads',
      'Salt',
      'Hojas de maiz (corn husks)',
      'Canola Oil',
    ],
    steps: [
      'Boil pork in salt water with entire garlic head tossed in',
      'Soak entire bag of Chili California in water for 30 minutes',
      'Once pork is done, take water from the pot to fill half a blender, and blend with chili California, entire garlic head, and salt to liking',
      'Pour sauce mix into pan with canola oil and cook until boil.',
      'Add pork to pan before or after boil.',
      'Soak corn husks in warm water for 15 minutes.',
      'Spread masa onto husks after they are soaked.',
      'Spread thin layer of chili sauce with pork over the masa.',
      'Wrap the tamale and set to the side until all are ready.',
      'Prepare steamer by filling with water up to the rack',
      'Put all tamales in, cover with lid, and cook for an hour.',
    ],

  ),
  Meal(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Huevos Rancheros',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/04_Huevos_Rancheros_-_Mesa_Coyoacan.jpg/640px-04_Huevos_Rancheros_-_Mesa_Coyoacan.jpg',
    duration: 35,
    cookMethods: 'Stovetop',
    ingredients: [
      '4 red tomatoes',
      '2 serrano peppers',
      'Quarter onion',
      '1 cup chopped cooked nopales',
      '2 large eggs',
      'Tortillas',
      'Salt',
    ],
    steps: [
      'On griddle, place and roast tomatoes, serrano peppers, garlic teeth, and onion',
      'Once roasted, place all in blender and add a dash of salt and enough water to allow blending',
      'Mix salsa with nopales in pot and cook until boil.',
      'In a separate pan, fry both sides of a tortilla in some oil.',
      'Once fried, crack an egg and place on top of tortilla still frying in pan. Sprinkle a dash of salt.',
      'Toss oil from bottom of the pan on top of the egg while keeping yolk intact.',
      'Once fried, place egg on tortilla on serving dish and top with salsa!',
    ],
  ),
  Meal(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Huevos a la Mexicana',
    cookMethods: 'Stovetop',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Huevos_à_la_Mexicana._%286571912625%29.jpg/640px-Huevos_à_la_Mexicana._%286571912625%29.jpg',
    duration: 20,
    ingredients: [
      '3 eggs',
      '2 roma tomatoes',
      '1/3 onion',
      '1 serrano pepper',
      'Salt',
      'Cooking oil',
    ],
    steps: [
      'Dice the tomatoes, onion, and serrano pepper',
      'In a pan, pour a tbs or so of oil and pour in the onion.',
      'After a minute, toss in the tomatoes and pepper and allow to cook for 2 minutes with frequent mixing',
      'Crack 3 eggs and pour into the same pan, breaking the yolk',
      'Add a dash of salt',
      'Stir until entirely cooked and serve!',
    ],
  ),
  Meal(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'Caldo de Albondigas',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Königsberger_Klopse_%284109469063%29.jpg/640px-Königsberger_Klopse_%284109469063%29.jpg',
    duration: 60,
    cookMethods: 'Stovetop, blender',
    ingredients: [
      '1 lb ground beef',
      '1 handful spearmint',
      '1 onion',
      '1 red tomato',
      '1 bunch cilantro',
      'Cooking oil',
      'Salt',
      'Seasoned bread crumbs',
    ],
    steps: [
      'Blend onion and spearmint with dash of salt. Add enough water to be able to blend.',
      'Mix ground beef with bread crumbs, rice, salt, and blended mix.',
      'Dice 1/2 onion and 1 tomato, toss in saucepan and roast with oil. Once roasted, fill half the saucepan with water and add dash of salt.',
      'Form meatballs. Once the previous step is boiled, add meatballs. Add one bunch of cilantro leaves',
      'Cook for 25 minutes.',
      'Serve!',
    ],
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
    ],
    title: 'Street Tacos - Al Pastor',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg/640px-001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg',
    duration: 1620,
    cookMethods: 'Stovetop, blender, oven, overnight',
    ingredients: [
      '2 garlic cloves',
      '4 guajillo chiles',
      '2 1/4 onion slices',
      'Cooking oil',
      'Salt',
      '1 tsp pepper',
      '1/2 tsp cumin',
      '1 tsp achiote',
      '1/2 tsp Mexican oregano',
      '1 pineapple',
      '3lb pork shoulder',
      '2 green onions',
    ],
    steps: [
      'Fry onion and garlic in pan. Toss in guajillo chile skin.',
      'Add a 1/3 cup water and 1/3 cup apple cider vinegar.',
      'Cover with lid and let cook for 10 minutes.'
      'Once finished, pour into blender and add another 1/2 cup water and 1/2 acv.',
      'Blend and strain into bowl. Put strained water to the side for now.',
      'Cut slices of pork shoulder and marinate with the sauce.',
      'Marinate 24 hours',
      'Preheat oven to 350°F.',
      'Slice pineapple into thick horizontal layers',
      'Use one thick slice of pineapple as a base, add layers of marinated pork in between and cover with another pinapple slice at the top. Hold together with oven-safe sticks.',
      'Bake for 2 hours.',
      'Once it\'s done and cooled down a bit, cut into small pieces as needed.'
      'Cook tortillas on stovetop carefully.'
      'Serve and enjoy!',
      '(Optional) Add radish, lime, cilantro, roasted green onion, roasted onion, and/or salsa on top!'
    ],

  ),
  Meal(
    id: 'm6',
    categories: [
      'c3',
    ],
    title: 'Horchata',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Horchata_%2824414538074%29.jpg/640px-Horchata_%2824414538074%29.jpg',
    duration: 660,
    cookMethods: 'Stovetop, blender, overnight',
    ingredients: [
      '1 1/2 cups white rice',
      '2 cinnamon sticks',
      '5 1/2 cups of water',
      '14 oz Lechera',
      '12 oz Leche Evaporada (evaporated milk)',
      '1 tsp vanilla extract',
    ],
    steps: [
      'Rinse 1 1/2 cups of rice',
      'Once clean, soak rice, 2 cinnamon sticks in 4 cups of water overnight or minumum 5 hours.',
      'After being soaked, blend for 5 minutes.',
      'Strain into bowl.',
      'Pour contents of bowl into a blender, and add 14 oz lechera and 12 oz leche evaporada.',
      'Strain into serving bowl.',
      'Add 1tsp vanilla extract.',
      'Add 1 1/2 cups water. Mix.',
    ],
  ),
  Meal(
    id: 'm7',
    categories: [
      'c4',
      'c8',
    ],
    title: 'Torejas',
    imageUrl:
    'https://t1.rg.ltmcdn.com/es/images/9/0/0/img_torrejas_tradicionales_33009_600_square.jpg',
    duration: 40,
    cookMethods: 'Stovetop',
    ingredients: [
      '3 cups water',
      '2 pilloncillo',
      '1 cinnamon stick',
      'Shredded coconut',
      '4 egg whites',
      '4 bolillos',
      '3 Tablespoons Butter, melted',
      'Cooking oil',
    ],
    steps: [
      'Boil 3 cups water, 2 pilloncillo, 1 cinnamon stick and shredded coconut in pot until pilloncillo disolves',
      'Slice bolillo into thick slices and toast slices in toaster',
      'Beat egg whites first in a bowl, then add in yolks and beat until foam-like.',
      'Beat eggs in a bowl.',
      'Coat bread slices in the beaten egg.',
      'Fry all sides in oil.'
      'Once fried, dip slices into first mixture.'
    ],
  ),
  Meal(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Mexican Hot Chocolate',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/HotChoco20Noviembre.JPG/640px-HotChoco20Noviembre.JPG',
    duration: 25,
    cookMethods: 'Stovetop',
    ingredients: [
      '2 quarts milk',
      '2 tablets Chocolate Abuelita OR Ibarra',
    ],
    steps: [
      'Boil 2 quarts milk and 2 chocolate tablets and mix frequently',
      'Make sure chocolate doesn\'t stick to bottom',
      'Serve once boiled and melted!',
    ],
  ),
  Meal(
    id: 'm9',
    categories: [
      'c4',
    ],
    title: 'Flan',
    imageUrl:
    'https://cdn.pixabay.com/photo/2019/10/13/12/12/pudding-4545945_1280.jpg',
    duration: 120,
    cookMethods: 'Oven, stovetop',
    ingredients: [
      '8 oz sugar',
      '3 eggs',
      '14 oz Leche Condensada (condensed milk)',
      '12 oz Leche Evaporada (evaporated milk)',
      '1 tbsp vanilla extract',
    ],
    steps: [
      'Preheat oven to 350°F.',
      'Melt sugar in saucepan until golden. Then pour and spread to bottom of glass baking dish.',
      'In a separate bowl, mix the 3 eggs, all condensed milk, all evaporated milk.',
      'Pour the mix into the glass baking dish and cover with aluminum foil.',
      'Bake for 60 minutes.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'When finished, flip baking dish to set flan onto plate.',
    ],
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c6',
    ],
    title: 'Pozole',
    imageUrl:
    'https://cdn.pixabay.com/photo/2017/10/05/18/08/pozole-2820341_1280.jpg',
    duration: 230,
    cookMethods: 'Stovetop, blender',
    ingredients: [
      '7 lbs pork shoulder',
      '1 onion',
      '11 garlic cloves',
      '2 quarts water',
      '10 chiles new mexico',
      'Salt',
      '1/2 lime',
      '10 chiles new mexico',
    ],
    steps: [
      'In a pot, add entire pork shoulder, 1 onion, 8 garlic cloves, and 2 quarts of water.',
      'Simmer for 3 hours on low medium heat.',
      'In a separate pot, boil 10 chiles new mexico',
      'Once boiled, leave water in pot. Blend chiles, 3 garlic cloves, 1 tsp salt, and  1/2 water from the boiled chilis.',
      'Rinse hominy and and mix in red sauce and hominy into the pot with water.',
      'Add in another tsp of salt. Simmer for 20 minutes.',
      'Shred meat and add to pot, let simmer 20 more minutes.',
      'Serve and squeeze lime into bowl',
    ],
  ),

  Meal(
    id: 'm11',
    categories: [
      'c3',
    ],
    title: 'Champurado',
    imageUrl:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrK9OJX8UeYY6vv14OYqWtm52dFCWTiIG-GA&usqp=CAU',
    duration: 30,
    cookMethods: 'Stovetop',
    ingredients: [
      '4 cups water',
      '1 large pilloncillo',
      '1 tablet Ibarra chocolate',
      '2 cinnamon sticks',
      '12 oz Leche Evaporada (evaporated milk)',
      '3/4 cup maseca',
      '4 cups milk',
    ],
    steps: [
      'Boil 4 cups water. Once boiled, add pilloncillo, 2 cinnamon sticks, and Ibarra tablet. Let chocolate and pilloncillo disolve. Mix frequently.',
      'Add 12oz leche evaporada.',
      'Add 3/4 cups of maseca and 4 cups milk.',
      'Mix frequently and boil.',
    ],
  ),

  Meal(
    id: 'm12',
    categories: [
      'c7',
    ],
    title: 'Pan de Muerto',
    imageUrl:
    'https://images.unsplash.com/photo-1635878793545-f8e2d3773ec0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1452&q=80',
    duration: 140,
    cookMethods: 'Oven',
    ingredients: [
      '4 eggs',
      '60g shortening',
      '1/2 cup sugar',
      '4 cups bread flour',
      '2 tbsp active dry yeast',
      '1 tbsp orange zest',
      '1/4 cup warm water',
      '100g unsalted butter',
      '1/2 tbsp orange blossom water',
      '1 egg white',
    ],
    steps: [
      'Mix 4 eggs, 60g shortening, and 1/4 sugar.',
      'Once mixed, stir in 4 cups of bread flour, another 1/4 cup of sugar, 2 tbsp active dry yeast, and 1 tbsp orange zest.',
      'Add in 1/4 warm water and stir. Then add in 100g unsalted butter and and 1/2 tsp orange blossom water and knead until smooth.',
      'Shape into bread and let sit for 1.5 hours. Cover with kitchen towel.',
      'Preheat oven to 350°F.',
      'Take a piece of the dough and shape on top of bread as a decoration. Stick by brushing egg whites on top of the bread.',
      'Set on baking tray with parchment paper.',
      'Bake for 15-20 minutes until golden-brown.',
      'Once finished, brush with melted butter and add sugar on top to your liking!',
    ],
  ),
  Meal(
    id: 'm13',
    categories: [
      'c2',
    ],
    title: 'Enchiladas',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Enchiladas_con_salsa_roja.jpg/640px-Enchiladas_con_salsa_roja.jpg',
    duration: 60,
    cookMethods: 'Stovetop, blender',
    ingredients: [
      '1 chicken breast',
      '2 green tomatoes',
      '2 serrano peppers',
      'Salt',
      '1/2 onion',
      'Tortillas',
      'Cotija cheese',
      'Salted cream',
      'Cooking oil'
    ],
    steps: [
      'Boil chicken breast. Once boiled, season with salt.',
      'Boil green tomatoes with serrano peppers.',
      'Blend green tomatoes and serrano peppers with enough chicken breast water so it is able to blend.',
      'Fry 1/2 with cooking oil, then pour in salso blend and mix.',
      'Shred chicken breast.',
      'Fry tortillas just enough to make them sturdy, not all the way',
      'Soak with the salsa and put chicken inside. Wrap.',
      'Top with cotija cheese and salted cream.',
    ],
  ),
  Meal(
    id: 'm14',
    categories: [
      'c2',
    ],
    title: 'Tacos Dorados',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Tacos_Dorados.jpg/640px-Tacos_Dorados.jpg',
    duration: 50,
    cookMethods: 'Stovetop, blender',
    ingredients: [
      '1 cooked chicken breast',
      'Tortillas',
      'Canola Oil',
      'Cotija cheese',
      'Salted cream',
      '2 Red tomatos',
      '2 serrano peppers',
      'Salt',
    ],
    steps: [
      'Blend tomatoes, serrano peppers, cilantro and enough water to be able to blend it. Add a dash of salt.',
      'Shred cooked chicken breast and mix in salt.',
      'Heat tortillas in microwave. (for one tortilla, 15-18 seconds is enough),',
      'Form tacos with tortillas and chicken inside.',
      'Add enough oil to pan to fry the tacos. Fry.',
      'Brush salted cream on top. Add salsa and cotija cheese on top.',
    ],
  ),

  Meal(
    id: 'm15',
    categories: [
      'c4',
    ],
    title: 'Conchas',
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Concha_%28pan_dulce_mexicano%29_01.JPG/640px-Concha_%28pan_dulce_mexicano%29_01.JPG',
    duration: 140,
    cookMethods: 'oven',
    ingredients: [
      '3 tbsp warm water',
      '2 1/2 tsp yeast',
      '1 cup butter',
      '1 tbspn oil',
      '1 cup sugar',
      '3/4 cup leche evaporada (evaporated milk)',
      '2 tsp salt',
      '2 tsp vanilla extract',
      '2 tsp cinnamon',
      '2 eggs',
      '5 cups all-purpose flour',
    ],
    steps: [
      'Mix 3 tbsp warm water and 2 1/2 tsp yeast and let sit until foamy.',
      'In a pan, melt 1/2 cup butter',
      'Add in 1/4 warm water and stir. Then add in 100g unsalted butter and and 1/2 tsp orange blossom water and knead until smooth.',
      'Once mixed, add in 4 cups flour and knead until dough is sticky. Let sit for two hours.',
      'Preheat oven to 350°F.',
      'In a separate bowl, mix warm water + yest mix, 1 tbsp oil, 1/3 cup sugar, 3/4 cup evaporated milk, 2tsp salt, 2 tsp vanilla extract, 2 tsp cinnamon, and 2 eggs.',
      'In a separate bowl for the topping, mix 1/2 cup soft butter, 2/3 cups sugar, and 1 cup flour.',
      '(Optional) Mix in food coloring of your choice.',
      'Divide dough into 10-12 pieces and place on baking tray with baking sheet.',
      'Flatten topping mix and press to the top of the bread doughs.',
      'You may add seashell pattern by slicing rows through top layer with a knife.',
      'Bake for 18 minutes.',
    ],
  ),
];

