class Follower


   @@all = []
    
    attr_reader :name, :age


    def initialize(name, age)
        @name = name
        @age = age
        @motto = nil
        @@all << self
        
    end

    def life_motto
       "We're the best"
    end

    def cults
        BloodOath.all.select do |cult|
            cult.follower == self
        end.map do |follower|
            follower.cult
        end
    end

    def join_cult(cult)
        BloodOath.new(self, cult)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age == age
        end.map do |follower|
            follower
        end


    end





end