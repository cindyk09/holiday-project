# Add seed data here. Seed your database with `rake db:seed`
menu = Menu.create(name: "Entrée")
Entree.create(name: "WILD ALBACORE TUNA NIÇOISE SALAD", description: "RED POTATOES, SLICED EGG, GREEN BEANS, LEMON-CAPER VINAIGRETTE",
  ingredients: "Egg, Green Bean, Lemon, Caper, Shallot, Olive, Olive Oil, Baby Kale, Romaine, Frisée, Mixed Greens, Red Bell Pepper, Red Potato, Tatsoi", menu: menu)
Entree.create(name: "ROASTED PORK WITH BLACK GARLIC SAUCE", description: "SPICY SWISS CHARD, ROASTED BUTTERNUT SQUASH, SPINACH RICE",
  ingredients: "Spinach, Black Garlic, Scallion, Butternut Squash, Cumin, Chili Powder, Cayenne Pepper, Yellow Onion, Orange, Cider Vinegar, Garlic, Cilantro, Ginger, Red Pepper Flake, Rice Wine Vinegar, Jalapeño Pepper, Black Peppercorn, White Rice, Oregano", menu: menu)
Entree.create(name: "ROASTED CHICKEN & BRIE SANDWICH", description: "TARRAGON-TOMATO AIOLI, CRUDITÉ, TAPENADE",
  ingredients: "Brie, Tarragon, Roma Tomato, Garlic, Oregano, Espelette Pepper, Black Peppercorn, Egg, Lemon, Dijon Mustard, Red Onion, Red Wine, Red Wine Vinegar, Mustard Seed, Cauliflower, French Breakfast Radish, Fennel, Carrot, Broccoli, Olive, Sherry Vinegar, Red Pepper Flake", menu: menu)
Entree.create(name: "ROASTED CAULIFLOWER & BRUSSELS SPROUT SALAD", description: "QUESO FRESCO, PISTACHIOS, EDAMAME, CORIANDER-YOGURT VINAIGRETTE",
  ingredients: "Cauliflower, Brussels Sprout, Queso Fresco, Coriander Seed, Red Pepper Flake, Pistachio, Mint, Mixed Greens, Orange, Olive Oil, Black Peppercorn, Tatsoi, Baby Kale, Frisée, Champagne Vinegar, Greek Yogurt, Edamame", menu: menu)
Entree.create(name: "NORTH AFRICAN ROASTED CHICKEN", description: "ROASTED CARROTS, HARISSA VINAIGRETTE, QUINOA TABOULEH",
  ingredients: "Italian Parsley, White Quinoa, Tomato, Red Onion, Lemon, Olive Oil, Cumin, Mint, Garlic, Aleppo, Carrot, Harissa, Black Peppercorn, Sherry Vinegar", menu: menu)
