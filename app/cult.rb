class Cult

    attr_reader :name, :location, :founding_year, :slogan
    
    @@all = []
    
    def initialize(name, location, founding_year)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = nil
        @@all << self
    end

    def slogan=(slogan)
        @slogan = slogan
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self)
    end

    def cult_population
        
        @@all.count 
        # BloodOath.all.select do |new_cult|
        # new_cult == self
        # end.length
    end

    def self.all
        @@all
    end

    def self.find_by_name(new_cult)
        self.all.find do |cult| 
           cult.name == new_cult
        end
    end

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(founding_year)
        self.all.find do |cult|
            cult.founding_year == founding_year
        end
    end

end

