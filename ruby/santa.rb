class Santa

    attr_reader :ethnicity
    attr_accessor :age, :gender

    def initialize (gender, ethnicity)
        puts "Initializing new Santa instance ...#{gender}, #{ethnicity}"
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end

    def speak(int)
        puts "Ho, ho, ho! Haaaappy holidays!" * int
    end

    def eat_milk_and_cookies(cookie)
        puts "*That was a good: #{cookie}"
    end

    #santa should age by 1 year
    def celebrate_birthday
        @age +=1
    end

    #take reindeer argument, move reindeer to last place in the reindeer rankigs
    def get_mad_at(reinder_name)
      @reindeer_ranking.push(reinder_name).delete_at(@reindeer_ranking.index(reinder_name))
    end
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


lots_of_santas = []

10000.times do
  lots_of_santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  lots_of_santas.last.age = rand(0..140)
  puts "Ethnicity: #{lots_of_santas.last.ethnicity}; Gender: #{lots_of_santas.last.gender}; Age: #{lots_of_santas.last.age}"
end
