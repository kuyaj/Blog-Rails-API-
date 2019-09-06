# Person.destroy_all
# Cat.destroy_all 

phil = Person.create({name: "Phil", age: 23})
alfred = Person.create({name: "Alfred", age: 25})


phil.cats.create({name: "Fluffles", age: 3, favorite_food: "friskies"})
phil.cats.create({name: "Spot", age: 11, favorite_food: "salmon"})
phil.cats.create({name: "Furtha", age: 1, favorite_food: "chicken"})
alfred.cats.create({name: "Meowserino", age: 5, favorite_food: "Garbanzo Beans"})
alfred.cats.create({name: "Boomer", age: 7, favorite_food: "beef"})
alfred.cats.create({name: "Mr. Whiskers", age: 9, favorite_food: "Gouda Cheese"})