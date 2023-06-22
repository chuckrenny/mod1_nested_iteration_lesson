



characters = [
    {
        "name": "Luke Skywalker",
        "height": "172",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "species": [],
        "vehicles": [
            "T-47 Airspeeder",
            "Imperial Speeder Bike"
        ],
        "starships": [
            "T-65 X-Wing",
            "Lambda-class T-4A Shuttle"
        ]
    },
    {
        "name": "C-3PO",
        "height": "167",
        "gender": "n/a",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "R2-D2",
        "height": "96",
        "gender": "n/a",
        "homeworld": "Naboo",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Darth Vader",
        "height": "202",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [
            "TIE Advanced x1"
        ]
    },
    {
        "name": "Leia Organa",
        "height": "150",
        "gender": "female",
        "homeworld": "Alderaan",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "74-Z speeder bike"
        ],
        "starships": []
    },
    {
        "name": "Owen Lars",
        "height": "178",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Beru Whitesun lars",
        "height": "165",
        "gender": "female",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [],
        "starships": []
    },
    {
        "name": "R5-D4",
        "height": "97",
        "gender": "n/a",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope"
        ],
        "vehicles": [],
        "starships": [],
    },
    {
        "name": "Biggs Darklighter",
        "height": "183",
        "gender": "male",
        "homeworld": "Tatooine",
        "films": [
            "A New Hope"
        ],
        "vehicles": [],
        "starships": [
            "T-65 X-wing"
        ]
    },
    {
        "name": "Obi-Wan Kenobi",
        "height": "182",
        "gender": "male",
        "homeworld": "Stewjon",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "The Phantom Menace",
            "Attack of the Clones",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "Tribubble Bongo"
        ],
        "starships": [
            "Delta-7 Aethersprite-class interceptor",
            "Providence-class Carrier/destroyer",
            "J-type Naboo Star Skiff",
            "Eta-2 Actis-class Light Interceptor",
            "Belbullab-22 Starfighter"
        ]
    },
    {
        "name": "Han Solo",
        "height": "180",
        "gender": "male",
        "homeworld": "Corellia",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi"
        ],
        "vehicles": [],
        "starships": [
            "Millennium Falcon",
            "Lambda-class T-4a shuttle"
        ]
    },
    {
        "name": "Chewbacca",
        "height": "228",
        "gender": "male",
        "homeworld": "Kashyyyk",
        "films": [
            "A New Hope",
            "The Empire Strikes Back",
            "Return of the Jedi",
            "Revenge of the Sith"
        ],
        "vehicles": [
            "All Terrain Scout Transport"
        ],
        "starships": [
            "Millennium Falcon",
            "Lambda-class T-4a shuttle"
        ]
    },
    {
        "name": "Lando Calrissian",
        "height": "177",
        "gender": "male",
        "homeworld": "Socorro",
        "films": [
            "The Empire Strikes Back",
            "Return of the Jedi"
        ],
        "vehicles": [],
        "starships": [
            "Millennium Falcon"
        ],
    }
]
# Challenge #1 
# Get a unique list of the homeworlds

# ["Tatooine", "Naboo", "Alderaan" ... ]

homeworlds = []

characters.each do |obj|
    homeworlds.push(obj[:homeworld])
end

# p '1', homeworlds.uniq

# Challenge #2
# Get a list of the characters who have starships

# ["Luke Skywalker", "Darth Vader", "Biggs Darklighter" ... ]
starships = []

characters.each do |obj|
    if !obj[:starships].empty?
        starships.push(obj[:name])
    end
end

# p '2', starships

# CHALLENGE #3
# Create a new hash such that each character points to their collection of starships: 

# {
#     "Luke Skywalker" => ["T-65 X-Wing", "Lambda-class T-4A Shuttle"],
#     "C-3PO" => [],
#     "R2-D2" => [],
#     "Darth Vader" => ["TIE Advanced x1"]
#     ...
#     ...
#     ...
# }

character_starships = {}

characters.each do |obj|
    character_starships[obj[:name]] = obj[:starships]
end

# p '3', character_starships

# Challenge #4 
# Create a new hash such that each movie points to a collection of characters 

# {
#     "A New Hope" => ["Luke Skywalker", "C-3PO", ... ],
#     "The Empire Strikes Back" => ["Luke Skywalker", "C-3PO" ... ], 
#      ...
#      ...
#      ...
# }
movie_characters = {}

characters.each do |obj|
    obj[:films].each do |movie|
        # if movie isn't a key, then create a key
        if !movie_characters.key?(movie)
            movie_characters[movie] = [obj[:name]]
        # else if movie is a key then push the name
        else
            movie_characters[movie].push(obj[:name])
        end
    end
end

p '4', movie_characters










