require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  spicy_foods.map do |data|
    data[:name]
    
  end

end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  newArr=[]
  spicy_foods.map do |data|
    if (data[:heat_level]>5)
    newArr.push(data)
 
    end
  end
  newArr
end
# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  spicy_foods.map do |data|
    puts data[:name] +" ("+ data[:cuisine]+") | Heat Level: "+"🌶" * data[:heat_level]
      #  binding.pry
  end
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  newString=""
  spicy_foods.map do |data|
    if(data[:cuisine]==cuisine)
    newString= data
    end
  end
  newString
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  spicy_foods.sort_by do |data|
    data[:heat_level]
  end
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
   newArr=[]
  spicy_foods.map do |data|
    if (data[:heat_level]>5)
    newArr.push(data)
 
    end
  end
  print_spicy_foods(newArr)
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  newArr=[]
  spicy_foods.each do |data|
  newArr.push(data[:heat_level])
    # binding.pry
  end
  newArr.sum / newArr.length
end
average_heat_level(spicy_foods)