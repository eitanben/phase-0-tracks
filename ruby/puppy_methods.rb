class Puppy
    def initialize
        puts "Initializing new puppy instance ..."
    end
    def speak(int)
        puts "Woof! " * int
    end
    def roll_over
        puts "*rolls over*"
    end
    def dog_years(int)
        puts int * 7
    end
    def fetch(toy)
        puts "*fetches #{toy}*"
    end
end

puppy = Puppy.new
puppy.speak(3)
puppy.roll_over
puppy.dog_years(5)
puppy.fetch("ball")

class Bored_student
    def initialize
        puts "Initializing bored student..."
    end
    def watch_tv
        puts "*watches TV*"
    end
    def check_fb
        puts "*checks facebook*"
    end
end

student_array = []
50.times do |student|
    bored_student = Bored_student.new
    student_array << bored_student
end

student_array.each do |student|
    student.watch_tv
    student.check_fb
end
