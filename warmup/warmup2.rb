# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
p nested_animals.flatten


# 2. Return an unnested array of animals with length >= 4
nested_animals = nested_animals.flatten
long_nested_animals = nested_animals.select do |animal|
    animal.to_s.length >= 4
end

p long_nested_animals

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }
animal_hash = {}

nested_animals.flatten.each do |animal|
    animal_hash[animal] = animal.to_s.length
end

p animal_hash #output is {:dog=>3, :cat=>3, :zebra=>5, :quokka=>6, :unicorn=>7, :bear=>4}