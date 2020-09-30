IceCream.destroy_all
Topping.destroy_all
Sundae.destroy_all

chocolate = IceCream.create(flavor: "chocolate")
strawberry = IceCream.create(flavor: "strawberry")
vanilla = IceCream.create(flavor: "vanilla")
pistachio = IceCream.create(flavor: "pistachio")
cookie_dough = IceCream.create(flavor: "cookie dough")
dulce_de_leche = IceCream.create(flavor: "dulce de leche")
rainbow = IceCream.create(flavor: "rainbow")
cake_batter = IceCream.create(flavor: "cake batter")

marshmallows = Topping.create(topping_type: "marshmallows")
pretzels = Topping.create(topping_type: "pretzels")
chocolate_chips = Topping.create(topping_type: "chocolate chips")
oreos = Topping.create(topping_type: "oreos")
sprinkles = Topping.create(topping_type: "sprinkles")
hot_fudge = Topping.create(topping_type: "hot fudge")
reeses_cups = Topping.create(topping_type: "reeses cups")
brownies = Topping.create(topping_type: "brownies")
cheese_cake_bites = Topping.create(topping_type: "cheese cake bites")


binding.pry
