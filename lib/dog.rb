class Dog
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.save

    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each {|dog_object| puts dog_object.name}
    end

    def save
        @@all << self
    end

end