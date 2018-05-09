# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

menu_items = MenuItem.create([
  {
    kitchen_id: '73cfc385-934f-4bdf-b99f-2132ba8623f5', 
    kind: 'menu_item', 
    name: 'Muesli', 
    description: 'Toasted oats with honey, fresh fruit, and yoghurt', 
    href: '/menu_items/73cfc385-934f-4bdf-b99f-2132ba8623f5'
  },
  {
    kitchen_id: 'd9f643e7-5e59-4734-b415-cadc43aeaa80', 
    kind: 'menu_item', 
    name: 'Eggs Benedict', 
    description: 'Poached eggs with ham and hollandaise, on a split muffin', 
    href: '/menu_items/d9f643e7-5e59-4734-b415-cadc43aeaa80'
  },
  {
    kitchen_id: 'b08ab143-8b8c-4669-b8da-db0abe9be16e', 
    kind: 'menu_item', 
    name: 'Breakfast Burrito', 
    description: 'Scrambled eggs, black beans, cheese, and rice wrapped in a wheat flour tortilla', 
    href: '/menu_items/b08ab143-8b8c-4669-b8da-db0abe9be16e'
  },
  {
    kitchen_id: '1256bb1d-9513-4173-91b0-536dc1fa9e17', 
    kind: 'menu_item', 
    name: 'Caesar salad', 
    description: 'Fresh cos lettuce salad with egg, tomato, and croutons with a creamy parmesan and black pepper dressing', 
    href: '/menu_items/1256bb1d-9513-4173-91b0-536dc1fa9e17'
  },
  {
    kitchen_id: '606dd6b9-1658-4952-9b9f-19a1e31c3211', 
    kind: 'menu_item', 
    name: 'Carrot Cake', 
    description: 'Moist cake made with carrot, walnuts, and spices with a cream cheese icing', 
    href: '/menu_items/606dd6b9-1658-4952-9b9f-19a1e31c3211'
  },
  {
    kitchen_id: '2d333b1c-c931-485f-984d-06937169947a', 
    kind: 'menu_item', 
    name: 'Corned Beef Reuben', 
    description: 'Slow cooked corned beef sandwich with swiss cheese and sauerkraut', 
    href: '/menu_items/2d333b1c-c931-485f-984d-06937169947a'
  },
  {
    kitchen_id: '4425cf39-2464-4f88-97e4-4564b04b842d', 
    kind: 'menu_item', 
    name: 'Halloumi Burger', 
    description: 'Grilled halloumi burger with lettuce, portobello mushroom, sliced pickles, and tomato chutney', 
    href: '/menu_items/4425cf39-2464-4f88-97e4-4564b04b842d'
  },
  {
    kitchen_id: '22f3e7e0-dc58-4291-95a6-56429bfc0507', 
    kind: 'menu_item', 
    name: 'Corn Fritter Stack', 
    description: 'Two corn fritters stacked and dressed with sweet chilli sauce and sour cream. Served with salad', 
    href: '/menu_items/22f3e7e0-dc58-4291-95a6-56429bfc0507'
  },
  {
    kitchen_id: '2f70e8b7-98f3-4de3-a546-f8add690ae77', 
    kind: 'menu_item', 
    name: 'Hash Browns', 
    description: 'Shredded potatoes have been salted and grilled until golden and cripsy', 
    href: '/menu_items/2f70e8b7-98f3-4de3-a546-f8add690ae77'
  },
  {
    kitchen_id: '32806068-be61-4a45-a6a7-2d60b7b5d037', 
    kind: 'menu_item', 
    name: 'Pancakes', 
    description: '3-Stack of pancakes, served with mascarpone and berry coulis', 
    href: '/menu_items/32806068-be61-4a45-a6a7-2d60b7b5d037'
  },
  {
    kitchen_id: '83f9d2fa-34a5-4545-a413-ee535c1b050f', 
    kind: 'menu_item', 
    name: 'Fried Chicken and Waffles', 
    description: 'Classic southern fried chicken served on waffles with honey butter and maple syrup', 
    href: '/menu_items/83f9d2fa-34a5-4545-a413-ee535c1b050f'
  },
  {
    kitchen_id: '85b8f51e-fb97-41aa-842b-f4445e77dca7', 
    kind: 'menu_item', 
    name: 'Salmon and Cream Cheese Bagel', 
    description: 'Toasted bagel filled with sliced smoked salmon, cream cheese, and pea sprouts', 
    href: '/menu_items/85b8f51e-fb97-41aa-842b-f4445e77dca7'
  },
  {
    kitchen_id: '06a32623-1ab6-4558-94f5-2e5e7783b36e', 
    kind: 'menu_item', 
    name: 'Mushroom Quiche', 
    description: 'Quiche made with portobello and chanterelle mushroom. Served with salad', 
    href: '/menu_items/06a32623-1ab6-4558-94f5-2e5e7783b36e'
  },
  {
    kitchen_id: 'c09d6b08-4b8b-40ed-9d48-49d7c88c05a1', 
    kind: 'menu_item', 
    name: 'Mince and Cheese Pie', 
    description: 'Ground beef and gravy, with a slice of sharp cheddar in a flaky pastry crust', 
    href: '/menu_items/c09d6b08-4b8b-40ed-9d48-49d7c88c05a1'
  },
  {
    kitchen_id: 'ed030095-8852-4326-aad0-df0594c1530c', 
    kind: 'menu_item', 
    name: 'Macaroni and Cheese', 
    description: 'Tender macaroni pasta in a rich cheesy sauce, with a crispy baked crust', 
    href: '/menu_items/ed030095-8852-4326-aad0-df0594c1530c'
  },
  {
    kitchen_id: 'e03ed831-849f-4ef1-ae82-c412f78a30f0', 
    kind: 'menu_item', 
    name: 'Chicken Fettucine', 
    description: 'Sliced chicken in a creamy sauce over fresh home made fettucine pasta', 
    href: '/menu_items/e03ed831-849f-4ef1-ae82-c412f78a30f0'   
  },
  {
    kitchen_id: '51f78b5a-94e3-4e74-82fb-24283ea5ec76', 
    kind: 'menu_item', 
    name: 'Pulled Pork Doughnuts', 
    description: 'Fresh savoury doughnuts filled with our special BBQ pulled pork', 
    href: '/menu_items/51f78b5a-94e3-4e74-82fb-24283ea5ec76'   
  },
  {
    kitchen_id: 'ceefa5bf-dda5-4872-ab28-158261b12f7d', 
    kind: 'menu_item', 
    name: 'Shakshouka', 
    description: 'Eggs are poached in a slow cooked tomato and spice mixture. Served with warm flatbread', 
    href: '/menu_items/ceefa5bf-dda5-4872-ab28-158261b12f7d'   
  },
  {
    kitchen_id: '449922e4-56db-4fba-99c7-2b01c6d20f56', 
    kind: 'menu_item', 
    name: 'French Toast', 
    description: 'Thick sliced brioche soaked in custard and grilled until golden brown. Served with bacon and maple syrup', 
    href: '/menu_items/449922e4-56db-4fba-99c7-2b01c6d20f56'   
  },
  {
    kitchen_id: '35f526ff-d84e-4038-a14a-1f66a8c41216', 
    kind: 'menu_item', 
    name: 'Curly Fries', 
    description: 'Crispy curly fried potato', 
    href: '/menu_items/35f526ff-d84e-4038-a14a-1f66a8c41216' 
  },
  {
    kitchen_id: 'e1c451a5-3757-41c3-9d22-5bc55d0ec8d7', 
    kind: 'menu_item', 
    name: 'Fish Tacos', 
    description: 'Grilled fish served with wheat tortillas, fresh salsa, and lime', 
    href: '/menu_items/e1c451a5-3757-41c3-9d22-5bc55d0ec8d7'
  },
  {
    kitchen_id: '65c08af5-c805-40a6-92f4-f5e342852eb5', 
    kind: 'menu_item', 
    name: 'Baklava', 
    description: 'Pistachio and syrup layered with filo pastry', 
    href: '/menu_items/65c08af5-c805-40a6-92f4-f5e342852eb5'
  },
  {
    kitchen_id: '0bafa127-28d9-40fe-933a-cd50cad3849c', 
    kind: 'menu_item', 
    name: 'Chermoula Eggplant', 
    description: 'Eggplant baked with spices, served with bulgur, baby spinach, and yoghurt', 
    href: '/menu_items/0bafa127-28d9-40fe-933a-cd50cad3849c'
  },
  {
    kitchen_id: 'adddd7ee-fff7-4156-8e61-23aaba3d8d09', 
    kind: 'menu_item', 
    name: 'Legume Salad', 
    description: 'Green beans and lentils are tossed with kale, mint, pine nuts and served with green yoghurt', 
    href: '/menu_items/adddd7ee-fff7-4156-8e61-23aaba3d8d09'
  },
  {
    kitchen_id: '3e8471c2-bf03-4f68-b293-e03c36cbfc35', 
    kind: 'menu_item', 
    name: 'Poutine', 
    description: 'Canadian classic. Home made french fries are served with fresh cheese curds and gravy', 
    href: '/menu_items/3e8471c2-bf03-4f68-b293-e03c36cbfc35'
  }
])
