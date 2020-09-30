IceCream.destroy_all
Topping.destroy_all
Sundae.destroy_all

chocolate = IceCream.create(flavor: "Chocolate")
strawberry = IceCream.create(flavor: "Strawberry")
vanilla = IceCream.create(flavor: "Vanilla")
pistachio = IceCream.create(flavor: "Pistachio")
cookie_dough = IceCream.create(flavor: "Cookie Dough")
dulce_de_leche = IceCream.create(flavor: "Dulce de Leche")
rainbow = IceCream.create(flavor: "Rainbow")
cake_batter = IceCream.create(flavor: "Cake Batter")

marshmallows = Topping.create(topping_type: "Marshmallows")
pretzels = Topping.create(topping_type: "Pretzels")
chocolate_chips = Topping.create(topping_type: "Chocolate Chips")
oreos = Topping.create(topping_type: "Oreos")
sprinkles = Topping.create(topping_type: "Sprinkles")
hot_fudge = Topping.create(topping_type: "Hot Fudge")
reeses_cups = Topping.create(topping_type: "Reeses Cups")
brownies = Topping.create(topping_type: "Brownies")
cheese_cake_bites = Topping.create(topping_type: "Cheese Cake Bites")


binding.pry
