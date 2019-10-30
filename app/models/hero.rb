class Hero
    attr_reader :power, :biography
    attr_accessor :name

    @@all = []
    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @biography = args[:biography]
        @@all << self
    end

    def self.all
        @@all
    end
end