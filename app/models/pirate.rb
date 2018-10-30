class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v)
    end

    @@all << self
  end

  def self.all
    @@all
  end
end
