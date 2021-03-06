# Exercise A

# Given the following data structure:

stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Complete these tasks:

#1. Add `"Edinburgh Waverley"` to the end of the array
#stops << "Edinburgh Waverley"
stops.push("Edinburgh Waverley") #more common

#2. Add `"Glasgow Queen St"` to the start of the array
stops.unshift("Glasgow Queen St")

#3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(4,"Polmont")

#4. Work out the index position of `"Linlithgow"`
found_index = stops.index("Linlithgow")

#5. Remove `"Livingston"` from the array using its name
stops.delete("Livingston")

#6. Delete `"Cumbernauld"` from the array by index
stops.delete_at(2)

#7. How many stops there are in the array?
length_of_array = stops.length
#stops.count()
#stops.size()

#8. How many ways can we return `"Falkirk High"` from the array?
way1 = stops[2]
way2 = stops[-5]
way3 = stops.fetch(2)
way4 = stops.values_at(2) #brings array as plural

#9. Reverse the positions of the stops in the array
return_journey = stops.reverse() #not permanent, '!' will make it distructive

#10. Print out all the stops using a for loop
for place in stops
  #p place
end

# Exercise B

# Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# Complete these tasks:

#1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
jon_twitter = users["Jonathan"][:twitter]

#2. Get Erik's hometown
erik_home = users["Erik"][:home_town]

#3. Get the array of Erik's lottery numbers
erik_lot_num = users["Erik"][:lottery_numbers]

#4. Get the type of Avril's pet Monty
for pet in users["Avril"][:pets]
  if pet[:name] == "monty"
     species_of_monty = pet[:species]
  end
end

#5. Get the smallest of Erik's lottery numbers
erik_lot_num_smallest = erik_lot_num.sum()
for num in erik_lot_num
  if erik_lot_num_smallest > num
    erik_lot_num_smallest = num
  end
end

erik_lot_num_smallest
erik_lot_num.min()

#6. Return an array of Avril's lottery numbers that are even
avril_lot_num = users["Avril"][:lottery_numbers]
avril_even_lottery_numbers = [] #pluralise for arrays as generally multiple
for num in avril_lot_num
  if num % 2 == 0
    avril_even_lottery_numbers << num
  end
end

#7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
erik_lot_num << 7

#8. Change Erik's hometown to Edinburgh
erik_home = "Edinburgh"

#9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets] << {name: "Fluffy", species: "dog"}

#10. Add another person to the users hash
users["Stuart"] = {
  :twitter => nil,
  :lottery_numbers => [9, 10, 1, 22, 4, 3],
  :home_town => "Hinckley",
  :pets => [
    {
      name: "she",
      species: "bike"
    }
  ]
}

# Exercise C

# Given the following data structure:

united_kingdom = [
  {
    name: "Scotland",
    population: 5_295_000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3_063_000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53_010_000,
    capital: "London"
  }
]

# Complete these tasks:

#1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
for country in united_kingdom
  if country[:name] == "Wales"
    country[:capital] = "Cardiff"
  end
end

p united_kingdom[1][:capital]

#alt:
united_kingdom[1][:capital] = "Cardiff"

#2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
united_kingdom << {
  name: "Northern Ireland",
  population: 1_811_000,
  capital: "Belfast"
}

#3. Use a loop to print the names of all the countries in the UK.
for country in united_kingdom
  p country[:name]
end

#4. Use a loop to find the total population of the UK.
pop_of_uk = 0
for country in united_kingdom
  pop_of_uk += country[:population]
end
