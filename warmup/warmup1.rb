# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.
animals_str = animals.map do |animal|
    animal.to_s
end
p animals_str


# 2. Return an array of animals with a length >= 4.
long_animals = animals.select do |animal|
    animal.to_s.length >= 4
end
p long_animals


