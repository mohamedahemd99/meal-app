import 'package:flutter/material.dart';

import 'models/category.dart';
import 'models/meal.dart';

 // ignore: non_constant_identifier_names
 List<Category> DUMMY_CATEGORIES =  [
  Category(

    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

 // ignore: non_constant_identifier_names
 List<Meal> DUMMY_MEALS =  [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://scontent.xx.fbcdn.net/v/t1.6435-1/c120.79.480.322a/p480x480/227922447_102572208798146_773194036044211976_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=1eb0c7&_nc_eui2=AeGc0y-7mvtg53J84s3dBX1mBJfV-aGPHBsEl9X5oY8cG0SCz9tINUvrDemFHedZYVA9Xv8NWFkOc7hqMCa9iEMW&_nc_ohc=MSvzSZGHUIAAX9783G_&_nc_ht=scontent.xx&oh=b4fff5bb1ebb74d8e979e519640e7898&oe=61A11B8B',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://scontent.xx.fbcdn.net/v/t39.30808-6/247299341_10157188926008078_2021419109955536453_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=9267fe&_nc_eui2=AeG9DeWeaZFozfKeT7yX1_C6jIKwb1D400eMgrBvUPjTRyCJtDy2XSFjG9egOx9m3Srq1ptuYrU637GcjG5YMIME&_nc_ohc=AXLmNoj_wdEAX_reKHd&_nc_ht=scontent.xx&oh=ee347d19875ae8588bcca499e211571a&oe=618051D3',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://scontent.xx.fbcdn.net/v/t1.6435-9/s206x206/192550802_3061020877545780_328161415257758821_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8024bb&_nc_eui2=AeFsJZwn0lQNpQWk5EAbC4Rv9uYuk4l0NvP25i6TiXQ285eeeZVcvGk1YtngQPQ0rrS9OZupVjJrzpgKGe-DSY6j&_nc_ohc=--Xtvnu47a0AX8NXA-T&_nc_ht=scontent.xx&oh=1866addc72ce49ea6c5bddf2d0bf2245&oe=61A0FFE5',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://scontent.xx.fbcdn.net/v/t1.18169-9/27544738_165890167380138_6794765192696540018_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeHIXiHKxrwFXykSdjecdLjCMepuoy31kM8x6m6jLfWQzyyeTimWRHfw1VZMER8r2PcVKUOp0pmjB5exLeEf22xt&_nc_ohc=QrjsJ6GnYe4AX9JUlDf&_nc_ht=scontent.xx&oh=016a0a76e5121e43b4c866f252eb854c&oe=61A260EC',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://scontent.xx.fbcdn.net/v/t1.18169-9/18157948_516178511839870_6152821949712750354_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=9267fe&_nc_eui2=AeHg3MOxWAHmLQHHdk1yyJ_TwUB4luKl5yzBQHiW4qXnLKf86rmXTRRyIHbTsCUNsjdk_b7v5D7PDUlD7KnQjg0y&_nc_ohc=biiy3SbX_skAX8MBecX&_nc_ht=scontent.xx&oh=6dc88b23763106ab085ea1108cd09445&oe=61A21EF6',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://scontent.xx.fbcdn.net/v/t1.18169-9/p206x206/11209566_875654632491711_7710645484229113953_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=2d5d41&_nc_eui2=AeFzIMH-d0G3Y5L028ZNBDML59ZppKPcjpDn1mmko9yOkFb3O7xinMYFLyXKKbyHtVqHWCxDEfFbeK9AZVnLzJrL&_nc_ohc=gej5oFY3DjcAX_QiaVR&_nc_ht=scontent.xx&oh=81a6082db8828108741741f860c75021&oe=61A2B788',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://scontent.xx.fbcdn.net/v/t1.6435-9/248785430_10157885905521333_7973572016119462817_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeEZ2vTMmrNDHs-HkyT9oER_D9PDQ3szufcP08NDezO599u-l0EavRuGZZjPKlvDDEcb9rOtdBevkyKig0irMFRz&_nc_ohc=OLaMdAJ1DOAAX_7qizp&tn=KtGia8Mb67SlHy5V&_nc_ht=scontent.xx&oh=50d6f0f01dda0e64b624ec4c368489e4&oe=61A06C13',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://scontent.xx.fbcdn.net/v/t1.6435-9/34665451_10156475593282070_4154367384037097472_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=730e14&_nc_eui2=AeGgRUThuEy0L1SNcjPUVvoR6vDsnKQF4zfq8OycpAXjNy84oNHtj0Zpgc1izGc0MFS8VpncZOKBL5mJtfFZy-CS&_nc_ohc=qf7DmAx-r0wAX8loV6v&_nc_ht=scontent.xx&oh=cf7559c43429fbd94a7cc3147e0d59be&oe=61A2BCF3',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://scontent.xx.fbcdn.net/v/t1.6435-9/121479660_104187261470691_4537010356289894989_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=0debeb&_nc_eui2=AeFCHMCcaGj4tsDi_sm4vmrf8N89LigPDIbw3z0uKA8Mhl7z_lqJZHAejLD1ir1afQMpVRqERVaqLRa3p0sU6yg0&_nc_ohc=2rMrrEwKiU0AX-tUnAC&tn=KtGia8Mb67SlHy5V&_nc_ht=scontent.xx&oh=911748c4854b7aae1e84f3daa6d64a8e&oe=61A0A54C',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://scontent.xx.fbcdn.net/v/t1.6435-9/240722325_397113231770607_4057101689470774457_n.jpg?_nc_cat=102&_nc_rgb565=1&ccb=1-5&_nc_sid=2c4854&_nc_eui2=AeE3TuV9fgZ55IB4yxg-zMOGbtL_41MNE7du0v_jUw0Tt_1R7xgIdS4QDTTnvL2gpIkc1q5tvaJqUoQBVTShUGV5&_nc_ohc=Zm5I0KEadoAAX-EMg-x&_nc_ht=scontent.xx&oh=758794dcc86e6aa93da772e10fdd3a34&oe=61A0C7CB',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
