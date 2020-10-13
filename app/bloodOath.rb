class BloodOath

    
    @@all = []


    attr_reader :follower, :cult, :initiation_date
    
    def initialize(follower, cult)
        @follower = follower
        @cult = cult
        @initiation_date = Time.new
        @@all << self 
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all.select do |follower|
            follower.initiation_date 
        end.map do |oath|
            oath.follower
        end
    end



end